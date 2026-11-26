# Incorrect ASM

Writing the alien marker pulse update directly changed the temporary
register order during the later vehicle scan in `func_8009811C_A70CC`.

```asm
lui     t9,%hi(currentLevel)
lw      t9,%lo(currentLevel)(t9)
...
lbu     t6,0x1a(v0)
```

# Code changed

Keep the direct pulse update. Apply the byte mask twice to the vehicle
index after reading it from the unsigned byte array.

```c
D_8013D534_14C4E4 = D_8013D534_14C4E4_Update + 0x800;
/* ... */
temp_v0 = D_80158E80[var_s1 - 1];
temp_v0 &= 0xFF;
temp_v0 &= 0xFF;
```

# Correct ASM

```asm
lui     t8,%hi(currentLevel)
lw      t8,%lo(currentLevel)(t8)
...
lbu     t7,0x1a(v0)
```
