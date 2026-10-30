`incorrect ASM`:
```asm
ldc1 $f28, 0x4AC8($at)
ldc1 $f26, 0x4AD0($at)
ldc1 $f22, 0x4AD8($at)
```

-> `code changed`: Enable the existing literal expressions in `func_800F49A4_103954` and remove the three duplicate double placeholders at D_80144A20, D_80144A28, and D_80144A30. Move the following placeholders, D_80144A38 through D_80144AC0, into `101840_animation_late_rodata.s`, attached as the second GLOBAL_ASM input to the next unmatched function. Put their declarations in `variables.us.h`. This places the generated three-double literal pool before the later placeholders; replacing literal arithmetic with named constant loads had changed hoisting, registers, and stack layout.

-> `correct ASM`:
```asm
ldc1 $f28, 0x4A20($at)
ldc1 $f26, 0x4A28($at)
ldc1 $f22, 0x4A30($at)
```
The function diff is exact. Full native US and EU ROM checksums both report OK.
