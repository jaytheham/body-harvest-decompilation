## Incorrect ASM

In `func_8012B26C_13A21C`, passing the weak-point coordinates through `hitEntry->x`, `hitEntry->y`, and `hitEntry->z` loaded all three halfwords before preparing the output pointers:

```asm
lh    a1,0(s0)
lh    a2,2(s0)
lh    a3,4(s0)
addiu t7,sp,0x134
addiu t8,sp,0x130
addiu t9,sp,0x12c
```

## Code changed

Cache the signed table index in the existing height scratch word. Keep the pointer for the radius calculation, and use the indexed table fields for the coordinate arguments:

```c
height = data.alien->unk5A;
hitEntry = &D_80147090_156040[height];
func_80128428_1373D8(entity.alien,
    D_80147090_156040[height].x,
    D_80147090_156040[height].y,
    D_80147090_156040[height].z,
    &weakX, &weakY, &weakZ);
```

## Correct ASM

The emitted table address still uses `s0`. The output addresses and stack arguments now precede the coordinate loads, matching ROM offsets `0x13B13C` through `0x13B164`:

```asm
addiu t7,sp,0x134
addiu t8,sp,0x130
addiu t9,sp,0x12c
sw    t9,0x18(sp)
sw    t8,0x14(sp)
sw    t7,0x10(sp)
lh    a1,0(s0)
lh    a2,2(s0)
lh    a3,4(s0)
jal   func_80128428_1373D8
move  a0,s3
```
