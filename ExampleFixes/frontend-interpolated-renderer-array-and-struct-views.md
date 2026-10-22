## incorrect ASM

In `func_800878A4_57D54`, raw word scale locals caused copies before signed narrowing. Word captures of already narrowed values instead removed three target moves. Updating a plain array retained the moves but changed floating-point evaluation order. A separate word temporary for the special-mode X conversion also delayed the Y reload and changed scratch registers.

```asm
mfc1 a0,$f16
nop
move v0,a0
sll t8,v0,16
sra v0,t8,16
/* special-mode Y reload occurred after the X addition */
```

## code changed

Give the same six-byte vector a normal array view and a typed struct view. Initialize through the array, then read and write the ordinary scale updates through the struct. Pass the struct view to the transform helper. Use the array view for the special branch, and keep its X conversion inside the addition expression. No volatile view or scalar scale carriers are needed.

```c
union { s16 array[3]; Unk80052B40 value; } scale;
/* ... */
scale.array[0] = scale.array[1] = scale.array[2] =
    (f32)D_800DE840[linkIdx].unk2 *
    (((f32)(u32)shape->size) * 0.03125) * 6.0;
scale.value.unk0 = (f32)((((f32)(u32)shape->scale[0]) / 255.0) + 1.0) * scale.value.unk0;
/* Apply the corresponding expressions to unk2 and unk4. */
/* Special branch, after its uniform array initialization: */
scale.array[0] = (s16)(f32)scale.array[0] + (particle->age * 0x1F4);
scale.array[1] = (f32)scale.array[1];
scale.array[2] = (f32)scale.array[2];
```

## correct ASM

```asm
sll a3,t7,16
sll t0,t7,16
sll t1,t7,16
lbu t7,0xa(s7)
sra t6,t1,16
sra t9,t0,16
mtc1 t7,$f4
sra t8,a3,16
move a3,t8
move t0,t9
move t1,t6
/* Special branch: */
trunc.w.s $f16,$f4
lh t9,0x1d2(sp)
mfc1 t8,$f16
mtc1 t9,$f10
addu t7,t8,t6
sh t7,0x1d0(sp)
lh t7,0x1d4(sp)
```

Both instruction sequences and the complete renderer match; the stock US ROM checksum is OK.
