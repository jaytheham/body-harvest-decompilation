# Unsigned promotion fixes the final wind multiplication order

Incorrect ASM (`func_800E2830_F17E0`, ROM `0xF1AE8`):

```asm
multu t8,v1
mflo  a0
sll   t9,a0,1
sra   t0,t9,4
```

-> Code changed:

```c
/* Before: velocity is a word containing an unsigned-halfword speed. */
xOffset = (s16)((velocity * D_80154080 * 2) >> 4);
/* After: */
xOffset = (s16)((s32)((u32)velocity * D_80154080 * 2) >> 4);
```

The unsigned-word conversion changes IDO's operand classification without adding an instruction. Cast the product back to signed before shifting: the wind direction can be negative, and the target requires an arithmetic shift. This closed the last differing instruction; the full US ROM checksum passed.

-> Correct ASM:

```asm
multu v1,t8
mflo  a0
sll   t9,a0,1
sra   t0,t9,4
```
