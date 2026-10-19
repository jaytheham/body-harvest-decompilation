## Level-table indexing in func_800836D0_92680

Incorrect ASM:

```asm
lui     t6,0x8004
lw      t7,0x7f90(t6)
; ...
sll     t8,t7,5
```

Code changed:

```c
kindRange = D_8013BC0C_14ABBC[(currentLevel << 4) + kind];
```

to:

```c
kindRange = ((s16 (*)[16])D_8013BC0C_14ABBC)[currentLevel][kind];
```

Use the same row view for the height table. This view is also used by the
matched `func_8010B804_11A7B4` in `101840.c`.

Correct ASM:

```asm
lui     t6,0x8004
lw      t6,0x7f90(t6)
; ...
sll     t7,t6,5
```

The height-table view also restores the radius `lh` before the level load
following the terrain-height call.

## Signed tile bases in the same function

Incorrect ASM: the first coordinate's final normalization is delayed into
the second coordinate's calculation.

```asm
addu    s3,t2,t4
; start calculating Z
addiu   s3,s3,0x40
; more Z calculations
sll     t5,s3,16
; ...
sra     s3,t5,16
```

Code changed:

```c
x = (tileX << 8) + ((quad & 1) << 7) + 0x40;
z = (tileZ << 8) + (((quad >> 1) & 1) << 7) + 0x40;
```

to:

```c
x = (s16)(tileX << 8) + ((quad & 1) << 7) + 0x40;
z = (s16)(tileZ << 8) + (((quad >> 1) & 1) << 7) + 0x40;
```

Correct ASM, with no extra narrowing instructions:

```asm
addu    s3,t4,t6
addiu   s3,s3,0x40
lw      t2,0x8c(sp)
sll     t7,s3,16
sra     s3,t7,16
```

The explicit signed tile base is shared with the edge branch and callback.
Together with the table views, this fixes the opening collision branch's
coordinate calculation and instruction order.

## Set the hit flag after assigning both angles

Incorrect ASM:

```asm
li      t9,1
sw      t9,0xac(sp)
sh      v0,0xba(sp)
sh      v0,0xb8(sp)
```

Code changed:

```c
minAngle = func_80003824_4424((f32)dx, (f32)dz);
hit = 1;
maxAngle = minAngle;
```

to:

```c
minAngle = func_80003824_4424((f32)dx, (f32)dz);
maxAngle = minAngle;
hit = 1;
```

Correct ASM:

```asm
li      t2,1
sw      t2,0xac(sp)
sh      v0,0xba(sp)
sh      v0,0xb8(sp)
```

UGEN's trace shows the short-angle normalization consumes a temporary even
when the assembler removes it. Moving that normalization before the flag
assignment fixes the flag's temporary register without changing final
instruction order. The completed function now matches, and the stock build reports `build/bh.us.z64: OK`.
