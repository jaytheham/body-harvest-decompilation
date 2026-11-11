# Incorrect ASM

In `func_8009811C_A70CC`, IDO placed the loop constant in `s4` and
the pipe-sync command word in `s5`.

```asm
lui     s5,0xe700
li      s4,1
bne     s0,s4,...
```

# Code changed

Use the pipe-sync word in an empty condition at the loop head. The
optimizer removes the condition and updates the command word's
register priority.

```c
if (_SHIFTL(G_RDPPIPESYNC, 24, 8) & var_s0) {}
```

# Correct ASM

```asm
li      s5,1
lui     s4,0xe700
bne     s0,s5,...
```
