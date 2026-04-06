### Save-slot serialization / byte-packing loop with multu

**Pattern**: A function that serializes 5 `Unk80047FB8` structs (0x14 = 20 bytes each) into a flat byte buffer (D_800431C0+9), one struct at a time. See `func_80001830_2430` and `func_800016D8_22D8` (both NON_MATCHING, score ~1760).

**Target assembly structure**:
- Prologue: `t0 = &D_src_array`, `t1 = 0x14`, `a0 = &D_dest_array`, `v1 = 9 (writeIdx)`, `a3 = 0 (outer counter)`
- **Outer loop top**: shifts compute entry ptr — `sll t7, a3, 2; addu t7, t7, a3; sll t7, t7, 2; addu a1, t0, t7`
- **Inner loop** (6 iterations): byte-copies struct bytes 0–5 using `addu t8, a1, v0; lbu t9, 0(t8)` pattern
- **After inner loop**: `multu a3, t1` immediately (pipeline scheduling), then writeIdx increments while multiply runs, then `mflo; addu a1, t0, t5; lw v0, 8(a1)` to load unk8
- Outer body: 4 bytes unk8, 1 byte unkC, 3 bytes unk10 (3 bytes only)
- Outer counter: `addiu a3, a3, 1` early, `andi t4, a3, 0xffff` late, `move a3, t4` in delay slot

**Key observations**:
1. **Two separate computations of entry pointer**: shifts at loop top (for inner loop), multu after inner loop (for field accesses). These must NOT be GVN-unified to appear.
2. **GVN forces unification** when inner loop and outer body use the same expression form (e.g. both `D_array + i` pointer-add, or both `D_array[i]` subscript). Compiler reuses a1.
3. **Two-path approach to force dual computation** (score 1760/CURRENT BEST):
   - Inner loop: `*((u8*)(D_80031310_31F10 + i) + j)` (pointer-add form → shifts)
   - Outer body: `((Unk80047FB8*)((u8*)D_80031310_31F10 + i * 0x14))->unk8` (explicit byte-multiply → multu)
   - Different expression forms → GVN CANNOT unify → two computations appear
4. **Masking issue** with `u16 i * 0x14`: explicit `i * 0x14` with u16 i generates `andi t0, a3, 0xffff; multu t0, t2` (extra masked counter t0), shifting all t-registers up by one from target. Target uses `multu a3, t1` directly (no intermediary masking).

**Approximate best C code** (score ~1760, not exact match):
```c
void func_80001830_2430(void) {
    u16 i, j, writeIdx;
    s32 val, val2;

    D_800431C8 = 0xFF;
    writeIdx = 9;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 6; j++) {
            (&D_800431C0)[writeIdx++] = *((u8*)(D_80031310_31F10 + i) + j);
        }
        val = ((Unk80047FB8*)((u8*)D_80031310_31F10 + i * 0x14))->unk8;
        (&D_800431C0)[writeIdx++] = val;
        (&D_800431C0)[writeIdx++] = val >> 8;
        (&D_800431C0)[writeIdx++] = val >> 16;
        (&D_800431C0)[writeIdx++] = val >> 24;
        (&D_800431C0)[writeIdx++] = ((Unk80047FB8*)((u8*)D_80031310_31F10 + i * 0x14))->unkC;
        val2 = ((Unk80047FB8*)((u8*)D_80031310_31F10 + i * 0x14))->unk10;
        (&D_800431C0)[writeIdx++] = val2;
        (&D_800431C0)[writeIdx++] = val2 >> 8;
        (&D_800431C0)[writeIdx++] = val2 >> 16;
    }
    func_800015B4_21B4(4, 0x47);
}
```

**Remaining gap** (what 1760 code doesn't match):
- Target `multu a3, t1` uses a3 (outer counter) directly; my code uses `multu t0, t2` where t0 is a masked copy of a3
- This pushes D_src_array to t1 (should be t0) and constant to t2 (should be t1)
- Target loops through unique `addiu a3, a3, 1` timing (early) then late masking `andi t4, a3, 0xffff` for check
- Root cause: u16 integer promotion mechanics force `andi t0, a3, 0xffff` before `multu t0, t2`

**Important serialization layout** (from inverse function `func_80001984_2584`):
- 6 bytes unk0..unk5 (first field bytes, byte-by-byte)
- 4 bytes unk8 (s32, byte-by-byte)
- 1 byte unkC (s16, low byte only)  
- 3 bytes unk10 (s32, only bytes 0-2 = low 3 bytes; byte 3 NOT stored!)
- Total: 14 bytes per struct × 5 structs = 70 bytes (starting offset 9 in D_800431C0)
- Note unk6, unk7, unkE, and unk10>>24 are all NOT serialized
