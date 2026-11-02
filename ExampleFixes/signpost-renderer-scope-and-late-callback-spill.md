## Incorrect ASM

```asm
sh    t8,0xe8(sp)
lh    t6,0xd4(sp)
lbu   t7,2(s2)
```

## Code changed

In `func_801365E0_145590`, place the coordinate load, presence check, and rendering body inside an unconditional scope:

```c
signpost = &D_80258330[var_fp];
if (1) {
    var_s0 = signpost->unk0;
    if ((var_s0 != 0) || (signpost->unk1 != 0)) {
        /* Coordinate conversion and rendering. */
    }
}
```

## Correct ASM

```asm
lh    t6,0xcc(sp)
sra   t7,s1,2
sh    t8,0xe0(sp)
sra   t9,t6,2
sh    t9,0xe2(sp)
sh    t7,0xe4(sp)
lbu   t8,2(s2)
lui   a3,0x8006
lui   s3,0x505
```

## Incorrect ASM

```asm
sw    t7,0x70(sp)
...
lw    t6,0x70(sp)
```

## Code changed

Move the callback assignment from before the matrix helper to after the first object constructor, immediately before the direction switch:

```c
func_8012D700_13C6B0(5, /* ... */, NULL, func_8012E1F8_13D1A8);
scratch.callback = func_80136B50_145B00;
switch (signpost->direction) {
    /* ... */
}
```

The intermediate placement immediately after `gSPDisplayList` used `0x6c(sp)`. IDO still hoists the callback address and store before the matrix call; the later C assignment changes spill-descriptor discovery order.

## Correct ASM

```asm
sw    t7,0x68(sp)
addiu s3,s3,-0x2e30
lw    a3,-0x44c8(a3)
...
lw    t6,0x68(sp)
```

## Incorrect ASM

```asm
addiu sp,sp,-0xf0
...
lui   a2,0x8080
ori   a2,a2,0x80ff
```

## Code changed

Reuse a four-byte `SignpostRenderScratch` union for the two white-light packets and the later callback. Writing those two packets through `scratch.packet` removes two macro-local pointer homes. Keep the white stores in `w1`, then `w0` order. After the gray-light macro, retain this empty paired pointer check:

```c
if (((s32)scratch.packet < (s32)D_8005BB2C) &&
    ((s32)D_8005BB2C < (s32)scratch.packet)) {}
```

## Correct ASM

```asm
addiu sp,sp,-0xe8
...
lui   a3,0x8080
ori   a3,a3,0x80ff
```

## Incorrect ASM

```asm
sll   t9,s1,8
addiu s1,t9,128
sll   t7,s0,16
sll   t6,s1,16
sra   s0,t7,16
sra   s1,t6,16
```

## Code changed

Widen the completed Z expression before storing it into the short local:

```c
var_s1 = (s64)((signpost->unk1 << 8) + 0x80);
```

## Correct ASM

The X narrowing now precedes the Z shift, matching that part of the target order:

```asm
sll   t7,s0,16
sra   s0,t7,16
sll   t6,t9,8
addiu t7,t6,128
sll   t6,t7,16
sra   s1,t6,16
```

No 64-bit instructions are emitted. This partial improvement lowers the function diff from 885 to 335; the initial copy is still missing and temporary registers still differ. The function remains guarded.
