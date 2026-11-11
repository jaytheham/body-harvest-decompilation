# Incorrect ASM

In `func_8009811C_A70CC`, assigning the level index to `var_a1`
before indexing the stage table moved the current-level address load
ahead of the setup stores.

```asm
li      t8,-1
lui     t4,0x8004
...
sh      t8,0(s0)
lw      t4,0x7f90(t4)
```

# Code changed

Compute the index in the table access.

```c
scratch.entries = &D_8013D2D0_14C280[currentLevel * 5];
```

# Correct ASM

```asm
li      t8,-1
mtc1    zero,$f24
...
sh      t8,0(s1)
lui     t9,0x8004
lw      t9,0x7f90(t9)
```
