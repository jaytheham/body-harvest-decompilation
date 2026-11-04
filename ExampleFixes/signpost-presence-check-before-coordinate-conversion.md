## Incorrect ASM

In `func_801365E0_145590`, loading the short coordinate before the presence check merges the byte load into the coordinate register and moves its shift into the branch delay slot:

```asm
lb      s0,0(s2)
bnez    s0,present
sll     t7,s0,24
```

## Code changed

Check the signpost fields directly, then convert each coordinate inside the rendering branch. Keep each shift and addition as separate assignments to its `s16` coordinate. This also removes the unnecessary `s64` cast previously used for the Z coordinate.

```c
/* Before */
var_s0 = signpost->unk0;
if ((var_s0 != 0) || (signpost->unk1 != 0)) {
    var_s0 = (var_s0 << 24) >> 16;
    var_s0 += 0x80;
    var_s1 = (s64)((signpost->unk1 << 8) + 0x80);
    /* Render the signpost. */
}

/* After */
if ((signpost->unk0 != 0) || (signpost->unk1 != 0)) {
    var_s0 = signpost->unk0 << 8;
    var_s0 += 0x80;
    var_s1 = signpost->unk1 << 8;
    var_s1 += 0x80;
    /* Render the signpost. */
}
```

## Correct ASM

The repeated field expression keeps the original load separate from the coordinate, producing the required copy and preserving the target instruction and register order:

```asm
lb      v0,0(s2)
addiu   a2,sp,0xcc
bnez    v0,present
move    s0,v0
lb      t6,1(s2)
beqz    t6,next
present:
sll     t7,s0,24
sra     t8,t7,16
lb      s1,1(s2)
addiu   s0,t8,128
sll     t9,s0,16
sra     s0,t9,16
sll     t9,s1,8
addiu   s1,t9,128
sll     t6,s1,16
sra     s1,t6,16
```
