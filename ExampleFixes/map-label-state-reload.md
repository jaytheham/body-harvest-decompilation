# Incorrect ASM

```asm
bnez    v1,...
 li     at,0x3c
```

# Code changed

Read the label state as an unsigned word after calculating the height
in `func_8009811C_A70CC`. IDO had reused the state loaded before the
clamp. The zero test gives the same result for either signedness.

```c
if ((*(u32 *)&D_8014ED34 == 0) && (temp_a1 == 0x3C) &&
    ((D_8014ED2C == 2) || (D_8014ED2D == 2))) {
    D_8014ED34 = 1;
}
```

# Correct ASM

```asm
lui     t6,%hi(D_8014ED34)
lw      t6,%lo(D_8014ED34)(t6)
bnez    t6,...
 li     at,0x3c
```
