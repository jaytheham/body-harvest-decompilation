## Incorrect ASM

`func_800CCD54_DBD04` already emitted all 215 target instructions with the correct constants, order, and 0x90-byte frame. Caching the whole `Unk80154318Entry` put the particle header in `s0` and the display-list pointer address in `s1`, swapping 41 instruction words:

```asm
lui    s1, 0x8006
addiu  s1, s1, -0x44d4
lw     v0, 0(s1)
addu   s0, s7, t8
lbu    t9, 0x14(s0)
```

## Code changed

Cache the existing typed payload instead of the whole entry. Read the header fields through the original array index, and access position, width, texture phase, and color through `EffectSparkState`:

```c
EffectSparkState *spark;

spark = (EffectSparkState *)D_80154318[index].payload;
/* Use spark->phase, spark->x/y/z, and spark->width. */
D_80153BC8 = D_80154318[index].unk2;
D_80153BC4 = &spark->r;
index = D_80154318[index].unk4;
```

## Correct ASM

IDO shares the payload and header address calculations while selecting the target registers. All 215 instruction words match; the stack layout and instruction order remain exact:

```asm
lui    s0, 0x8006
addiu  s0, s0, -0x44d4
lw     v0, 0(s0)
addu   s1, s7, t8
lbu    t9, 0x14(s1)
```
