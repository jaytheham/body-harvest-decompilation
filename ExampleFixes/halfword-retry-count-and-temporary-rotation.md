# Halfword retry count and temporary rotation

`func_800FDEA8_10CE58` (IDO 5.3, `-O2 -mips2 -32`).

## Incorrect ASM

The retry count reload followed the reset branch and was duplicated by AS1:

```asm
lw      t2,0xc4(sp)
lw      t3,0xc0(sp)
slt     at,t2,t3
beqzl   at,reset_done
 lw     t5,0x8c(sp)
sw      zero,0xc4(sp)
lw      t5,0x8c(sp)
reset_done:
lw      t4,0x88(sp)
```

## Code changed

Give the count a separate signed/unsigned word carrier, keep a real count use in both reset arms, and use a separate halfword boolean for the later collision test. A signed `-1` operand matters: XOR-zero in the reset arm added a redundant `lhu`; using two signed members added redundant moves.

```c
union {
    s32 signedValue;
    u32 unsignedValue;
} iterationCount;

iterationCount.signedValue = i;
if (stepCount < maxStepCount) {
    stepCount = 0;
    iterationCount.unsignedValue = iterationCount.unsignedValue & -1;
} else {
    iterationCount.unsignedValue = iterationCount.unsignedValue | 0;
}
scanIndex = i - 1;
if (iterationCount.signedValue != 0) {
    /* Later collision block declares s16 allowed = 1. */
}
```

## Correct ASM

```asm
lw      t2,0xc4(sp)
lw      t3,0xc0(sp)
lw      v0,0x8c(sp)
slt     at,t2,t3
beqzl   at,reset_done
 lw     t4,0x88(sp)
sw      zero,0xc4(sp)
lw      t4,0x88(sp)
reset_done:
```

## Incorrect ASM

After that change, the first result and following scratch registers still differed:

```asm
mfc1    t2,$f16
sll     t3,t2,0x10
sra     s2,t3,0x10
```

## Code changed

Remove the existing `offset = (s16)(u64)offset` round trip. Replace both `scanAngle.unsignedValue & 0xFFFF` trig arguments with `(u32)scanAngle.unsignedValue`, and all four `yaw & 0xFFFF` trig arguments with `(u32)yaw`. The helpers already narrow their arguments. The explicit masks created discarded normalization temporaries that changed UGEN's scratch register sequence.

```c
offset = (s16)(s32)(/* double expression using coss((u32)scanAngle.unsignedValue) */);
s3 = (s16)(s32)(/* double expression using sins((u32)scanAngle.unsignedValue) */);
s1 = coss((u32)yaw);
/* The other three yaw trig calls use the same word cast. */
```

## Correct ASM

```asm
mfc1    s2,$f16
sll     t8,s2,0x10
sra     s2,t8,0x10
```

The first 536 instructions now match exactly.

## Incorrect ASM

The loop tail still selected a different decrement temporary and shifted all later scratch registers:

```asm
addiu   t8,v1,-1
sh      t8,0xf8(sp)
lw      t1,0xdc(sp)
```

## Code changed

Mask the decrement to the width of the volatile halfword destination. AS1 removes the redundant normalization, while UGEN allocates the two required temporaries. A 64-bit round trip instead fixed the decrement but left one extra temporary allocation.

```c
scanIndex = (priorIndex - 1) & 0xFFFF;
```

## Correct ASM

```asm
addiu   t1,v1,-1
sh      t1,0xf8(sp)
lw      t3,0xdc(sp)
```

All 666 instructions match, including the `0x110` frame and every stack home. Native US and EU ROM checksums pass.
