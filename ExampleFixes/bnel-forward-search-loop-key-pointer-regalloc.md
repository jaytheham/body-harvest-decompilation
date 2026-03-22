### Forward bnel search loop: key→v0 / pointer→a0 / counter→v1 allocation

**Pattern:** No-arg leaf function that searches `buildingInstances[]` for an entry whose `buildingType` matches `D_8015EA29` (a global u8), returning the index (0–255) or D_8015EA29 if not found.

```asm
lui  v0, hi(D_8015EA29)        ; v0 = key (global u8)
lui  a0, hi(buildingInstances) ; a0 = pointer
or   v1, zero, zero            ; v1 = counter
addiu a0, a0, lo(buildingInstances)
lbu  v0, lo(D_8015EA29)(v0)
addiu a1, zero, 0x100          ; a1 = loop limit

.loop:
  lbu  t6, 6(a0)
  bnel v0, t6, .next1         ; if key != entry[0].buildingType
  lbu  t7, 0x1e(a0)           ;   delay: pre-load entry[1]
  jr   $ra
  or   v0, v1, zero           ; return i
.next1:
  bnel v0, t7, .next2
  ...
  addiu v1, v1, 4             ; delay slot of 4th bnel: i += 4
  bne  v1, a1, .loop          ; loop back if i != 256
  addiu a0, a0, 0x60          ; delay slot: pointer += 4*sizeof(BuildingInstance)
  jr   $ra
  nop                         ; return D_8015EA29 (v0 unchanged)
```

**Key structural requirement:** The loop termination (`bne v1, a1`) must use **different** registers from the search comparisons (`bnel v0, tN`). If key and the loop counter share a register (or the pointer is in v0), IDO generates a spurious 5th `bnel` comparison that branches out of the function — completely broken output.

**Why the correct layout cannot be achieved:** IDO consistently assigns the `BuildingInstance*` pointer to v0 (the first "complex address computation"), regardless of declaration order or variable types. D_8015EA29 (which should be v0 as the fallthrough return value) consistently lands in a0 or v1. All orderings tried: key-first, pointer-first, counter-first, with combined or separate inits, produced either pointer→v0 or key→v1.

**Resolution:** Wrap as `#ifdef NON_MATCHING` with `GLOBAL_ASM` fallback. The clean C code is:

```c
#ifdef NON_MATCHING
s32 func_80120634_12F5E4(void) {
    s32 i = 0;
    BuildingInstance *inst = buildingInstances;

    for (; i != 0x100; i += 4, inst += 4) {
        if (D_8015EA29 == inst[0].buildingType) return i;
        if (D_8015EA29 == inst[1].buildingType) return i + 1;
        if (D_8015EA29 == inst[2].buildingType) return i + 2;
        if (D_8015EA29 == inst[3].buildingType) return i + 3;
    }
    return D_8015EA29;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/.../func_80120634_12F5E4.s")
#endif
```

**Return type:** Must be `s32` (not `u8`). With `u8` return, IDO inserts `andi v0,v0,0xff` masks before each early return, which do not appear in the target.

**Best score achieved before NON_MATCHING:** 905 (with `s32 i=0` first, `BuildingInstance *inst` second, `D_8015EA29` inline — all instructions match but v0↔a0 swapped throughout, AND the loop structure is broken due to the register conflict).
