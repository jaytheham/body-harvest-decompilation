# Incorrect ASM

The final map arrow color block in `func_8009811C_A70CC` reused the green
constant for both halfword stores.

```asm
li      a1,0xc8
lui     at,0x8005
sh      a1,0x3bfa(at)
lui     at,0x8005
sh      a1,0x3bf2(at)
```

# Code changed

Store the second value through the corresponding unsigned halfword type.
The store still writes the same 16-bit color value.

```c
D_80053BFA = 0xC8;
*(u16 *)&D_80053BF2 = 0xC8;
```

# Correct ASM

IDO materializes each halfword store's constant separately. The temporary
registers still depend on the surrounding function.

```asm
lui     at,0x8005
li      t6,0xc8
sh      t6,0x3bfa(at)
lui     at,0x8005
li      t7,0xc8
sh      t7,0x3bf2(at)
```
