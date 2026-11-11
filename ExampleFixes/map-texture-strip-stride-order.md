# Incorrect ASM

```asm
addu    t9,t8,a1    # Base plus row offset
addu    t6,t9,t7    # Add the loop stride
addu    v0,t6,v1    # Add the column offset
```

# Code changed

Index the texture bytes with one expression whose first term is the
loop stride. In the second texture pass of `func_8009811C_A70CC`,
deriving a strip pointer from the row offset caused IDO to apply that
offset before the loop stride.

```c
scratch.pixels = (u16 *) &((u8 *) D_8006AA6C)[(var_s0 << 11) + temp_v1 + var_a1];
```

# Correct ASM

```asm
addu    t7,t8,t9    # Base plus the loop stride
addu    t6,t7,v1    # Add the row offset
addu    v0,t6,a1    # Add the column offset
```
