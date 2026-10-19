incorrect ASM (`func_8007FDD8_8ED88`, explicit entity/traversal pointers and a named next index):

```asm
addiu   sp,sp,-0x58
/* First full-array pass, around func_8007FB08_8EAB8: */
sw      v1,0x3c(sp)
lw      v1,0x3c(sp)
```

-> code changed:

Use array indexing for the full-array and active-list passes, including the entity field accesses. Remove the named entity pointer, traversal pointer, and next-index local. In the active-list pass, pass `i + 1` directly and increment `i` in the for-loop. IDO keeps their common value in `s0` across the callback without a source local. Read `D_8014ECCC` directly instead of refreshing a local copy after each callback.

```c
s32 i;
u8 typeIdx;
u8 index;
s32 finalIndex;

/* Full-array passes use alienInstances[i].field directly. */
for (i = 0; (u32)i < D_8014ECCC; i++) {
    index = D_8014D510[i];
    typeIdx = alienInstances[index].typeIndex;
    if (!(alienTypes[typeIdx].unk54 & 0x3E) ||
        ((typeIdx < 3) && (alienInstances[index].unk20 & ALIEN_FLAG_UNKL))) {
    } else {
        D_8014ECD8 = -1;
        D_8014D304 = 0;
        func_8007F0E8_8E098(index, i + 1, 1);
    }
}
```

-> correct ASM (the complete function and US ROM match, with the final-pass lifetime check documented separately):

```asm
addiu   sp,sp,-0x48
/* First full-array pass, around func_8007FB08_8EAB8: */
sw      v1,0x38(sp)
lw      v1,0x38(sp)
/* Active-list pass: */
addiu   s0,s1,1
sw      zero,-0x2cfc(at)
andi    a1,s0,0xff
jal     func_8007F0E8_8E098
li      a2,1
lui     a2,0x8015
lw      a2,-0x1334(a2)
sltu    at,s0,a2
move    s1,s0
```
