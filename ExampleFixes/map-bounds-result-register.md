# Incorrect ASM

The X bounds tests and final Y bounds test in `func_8009811C_A70CC`
materialize their results in `s1`.

```asm
move    s1,zero
...
move    s1,s5
```

# Code changed

Reuse `temp_v0` for the bounds result before the branch.

```c
temp_v0 = ((MIN(var_t4, temp_t3) <= temp_f2) &&
    (temp_f2 <= MAX(var_t4, temp_t3))) ? 1 : 0;
if (temp_v0) {
    /* Check the existing Y bound. */
}
```

# Correct ASM

Both X tests and the final Y test use the original result register.

```asm
move    a0,zero
...
move    a0,s5
```
