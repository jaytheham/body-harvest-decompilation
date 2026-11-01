# Struct member read fixes interpolation multiply operand order

Incorrect ASM in `func_80125D70_134D20`:

```asm
mul.s $f8,$f6,$f2
```

Code changed:

```c
/* Before: delta reference outweighs the cached ratio. */
temp_f22 = ((f32)temp_f2 * (f32)(*arg4 - arg1)) + (f32)arg1;
/* After: a member read changes the reference weight, preserving the same word load. */
temp_f22 = ((f32)temp_f2 * (f32)(((Vec3i *)arg4)->x - arg1)) + (f32)arg1;
```

Correct ASM:

```asm
mul.s $f8,$f2,$f6
```

Every other instruction remains unchanged. Both US and EU full ROM checks pass.
