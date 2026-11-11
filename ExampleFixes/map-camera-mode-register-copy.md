# Incorrect ASM

```asm
lbu     v1,%lo(D_8014ED2C)(v1)
beqz    v1,...
 move   a1,v1
li      at,2
```

# Code changed

Use the existing word temporary for the mode before and after
the movement calculation. Keep the Y stage bounds in a separate
temporary so the final zoom test still receives the mode.

```c
temp_v1 = D_8014ED2C;
if ((temp_v1 == 0) || (temp_v1 == 2)) {
    /* Calculate movement, then reload the mode. */
    temp_v1 = D_8014ED2C;
    /* Clamp against stage bounds held in var_a1. */
}
```

# Correct ASM

```asm
lbu     v1,%lo(D_8014ED2C)(v1)
beqz    v1,...
 li     at,2
bne     v1,at,...
```
