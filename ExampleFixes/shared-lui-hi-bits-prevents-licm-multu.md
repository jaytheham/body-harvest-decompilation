### Shared Hi-Bits (Same `lui` High Part) Between Source and Destination Arrays Prevents LICM and Multu Pattern

**Symptom:** When a function serializes a struct array (`D_80047FB8[i]`) into a byte buffer (`D_800431C0[idx]`), and both arrays share the same `lui` high-address bits (0x8004 in both cases), IDO 5.3 at -O2 fails to hoist the source array base address outside the loop. Instead:

- The target assembly has THREE separate `lui 0x8004` instructions in the prologue (for D_800431C8, D_80047FB8 base=t0, D_800431C0 base=a0), plus `li t1, 0x14` and `multu a3, t1` in the loop body.
- The compiled C code instead generates only TWO `lui 0x8004` instructions in the prologue (D_800431C8 and D_800431C0), computing D_80047FB8's base inside the outer loop via `lui t8; addiu t8` each iteration. No `multu` appears.

**Cause:** IDO's Loop-Invariant Code Motion (LICM) treats D_80047FB8 (hi=0x8004) differently when another global with the SAME hi-bits (D_800431C0, hi=0x8004) is already live. It does NOT generate a separate pre-loop `lui` for D_80047FB8, instead recomputing the address inside the loop. This prevents CSE from distinguishing the two computations and thus no `multu` is emitted.

**Contrast:** The nearly identical function `func_80001830_2430` reads from `D_80031310_31F10` (hi=0x8003, different from D_800431C0's 0x8004) into the same buffer. For THAT function, IDO correctly hoists `lui t0, 0x8003` before the loop and generates `multu a3, t1` in the loop body. The code compiles and matches fine.

**Best-effort C code (NON_MATCHING, score ~4245, correct semantics):**
```c
void func_800016D8_22D8(void) {
    u16 j;
    u16 idx;
    u16 i;
    s32 unk10;

    D_800431C8 = (s8) D_800313D0;
    idx = 9;
    i = 0;
    do {
        j = 0;
        do {
            (&D_800431C0)[idx] = (&D_80047FB8[i].unk0)[j];
            j++;
            idx++;
        } while (j < 6);
        (&D_800431C0)[idx++] = (s8)(D_80047FB8[i].unk8);
        (&D_800431C0)[idx++] = (s8)(D_80047FB8[i].unk8 >> 8);
        (&D_800431C0)[idx++] = (s8)(D_80047FB8[i].unk8 >> 16);
        (&D_800431C0)[idx++] = (s8)(D_80047FB8[i].unk8 >> 24);
        (&D_800431C0)[idx++] = (s8)(D_80047FB8[i].unkC);
        unk10 = D_80047FB8[i].unk10;
        i++;
        (&D_800431C0)[idx++] = (s8)(unk10);
        (&D_800431C0)[idx++] = (s8)(unk10 >> 8);
        (&D_800431C0)[idx++] = (s8)(unk10 >> 16);
    } while (i < 5);
    func_800015B4_21B4(4, 0x47);
}
```

**Approaches tried that don't work:**
- Adding `u8 *srcbytes = (u8*)D_80047FB8 + i * 0x14` for inner loop: generates `multu` but introduces 2 extra instructions (two i-tracking registers a2 and t0), score 3055.
- Adding `Unk80047FB8 *tbl = D_80047FB8; ((u8*)tbl)[i*0x14+j]`: hoists D_80047FB8 but still 2-register i problem, register shifts by 1, score 2975.
- `Unk80047FB8 *entry = &D_80047FB8[i]`: compiler CSEs with direct field accesses, no multu.
- `((u8*)(tbl+i))[j]` struct pointer arithmetic: compiler CSEs as single a1, no multu.

**Key constraint:** The pattern requires `multu a3, t1` (where a3=i is the SAME register as the shift chain `sll t7, a3, 2`). This single-register-i dual-use is impossible to achieve with D_80047FB8 sharing hi-bits with D_800431C0 in IDO 5.3.
