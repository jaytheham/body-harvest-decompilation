# Incorrect ASM

```asm
lui     t2,%hi(D_80052B34)
lw      t2,%lo(D_80052B34)(t2)
lh      t0,0(a3)
lh      t8,0(t2)
```

# Code changed

Use `var_t4` for the delta and clamped result in both first-camera
axes of `func_8009811C_A70CC`. Reusing `temp_v0` for these values
had changed the register assigned to the player pointer.

```c
temp_t3 = stage->unk0;
var_t4 = (D_80052B34->unk0 >> 7) - temp_t3;
var_t4 = MAX(0, MIN(var_t4, temp_v1));
cam3CC.targetX = var_t4 + temp_t3;
```

# Correct ASM

```asm
lui     t1,%hi(D_80052B34)
lw      t1,%lo(D_80052B34)(t1)
lh      t0,0(a3)
lh      t8,0(t1)
```
