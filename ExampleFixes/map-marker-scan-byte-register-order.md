`incorrect ASM`

In `func_8009811C_A70CC`, the vehicle marker iteration and the later nearest-vehicle iteration both load byte indices. The packet writes after the first iteration used the wrong temporaries:

```asm
lui     t6,0xff2f
lui     t9,0xfc11
...
sw      t6,4(v1)
sw      t9,0(v1)
```

-> `code changed`

Mask the first iteration's `temp_t3` after the byte load. Use two masks on the later nearest-vehicle index. Each mask leaves the loaded byte value unchanged.

```c
temp_t3 = D_80158E80[var_s1];
temp_t3 &= 0xFF;
/* Later, in the nearest-vehicle scan. */
temp_v0 = D_80158E80[var_s1 - 1];
temp_v0 &= 0xFF;
temp_v0 &= 0xFF;
```

-> `correct ASM`

The packet uses the target registers for both constants and word stores:

```asm
lui     t8,0xff2f
lui     t6,0xfc11
...
sw      t8,4(v1)
sw      t6,0(v1)
```
