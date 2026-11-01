## Incorrect ASM

`guess_prepareToSaveGame` used a byte pointer and cached scalar statistics. IDO colored the cached score in `v0` and emitted stores before the following print argument loads:

```asm
lw      v0,0(s0)
sra     t8,v0,8
sb      v0,-4(s1)
jal     osSyncPrintf
lhu     a1,6(s0)
```

## Code changed

Use an unsigned array index for the statistics and byte-copy loops, an explicit save-slot stride, and direct EEPROM/statistics array accesses. Retain byte masks on shifted values. Cast the weapon-loop comparison to signed:

```c
u32 i;
s32 stride;
stride = arg0 * 0x7A;
offset = stride + 0x53;
for (i = 0; i < 6U; i++) {
    osSyncPrintf(D_80036884_37484, D_80052A98[i].score);
    D_800431C0[offset++] = D_80052A98[i].score & 0xFF;
    D_800431C0[offset++] = (D_80052A98[i].score >> 8) & 0xFF;
    /* Remaining bytes follow in the same order. */
}
for (i = 0; (s32)i < 7; i++) { /* weapon slots */ }
```

Use full-width `& 0xFF` expressions for the 64-bit flag bytes instead of explicit helper calls with narrowing casts. For halfwords, write the low byte before the masked shifted byte:

```c
D_800431C0[offset++] = D_80048026 & 0xFF;
D_800431C0[offset++] = (D_80048026 >> 8) & 0xFF;
```

## Correct ASM

```asm
lw      t7,0(s0)
sra     t9,t7,8
sra     t1,t7,16
sra     t3,t7,24
sb      t9,-3(s1)
sb      t1,-2(s1)
sb      t3,-1(s1)
lhu     a1,6(s0)
jal     osSyncPrintf
sb      t7,-4(s1)
```

The unsigned source loops retain `sltu` after pointer strength reduction. The signed weapon comparison emits `slti`. Natural halfword byte order emits `sra t6,a1,8` and `sra t9,t7,8`; reversing the C stores emitted `t3` and `t8` instead. Both US and EU ROMs match.