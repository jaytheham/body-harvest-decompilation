# Incorrect ASM

In `func_8009811C_A70CC`, the movement controls used a different
temporary register after the camera transition phase increment.

```asm
andi    t7,v0,0x8
...
lh      t7,0(s3)
```

# Code changed

Apply three halfword masks to the signed angle temporary after its
increment. The assignments preserve the existing signed halfword.
Use three byte masks at the later vehicle index load to preserve the
already matched scan register order.

```c
temp_a2_2 = D_8014ED2E + 0x200;
temp_a2_2 &= 0xFFFF;
temp_a2_2 &= 0xFFFF;
temp_a2_2 &= 0xFFFF;
/* ... */
temp_v0 = D_80158E80[var_s1 - 1];
temp_v0 &= 0xFF;
temp_v0 &= 0xFF;
temp_v0 &= 0xFF;
```

# Correct ASM

```asm
andi    t8,v0,0x8
...
lh      t8,0(s3)
```
