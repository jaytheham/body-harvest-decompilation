# Incorrect ASM

In `func_8009811C_A70CC`, the pulsing marker's cosine input and
phase update shared one address held in `t4`.

```asm
lui     t4,0x8014
addiu   t4,t4,-0x2adc
...
lh      t3,0(t4)
...
sh      t3,0(t4)
```

# Code changed

Read the signed halfword for the phase increment through
`D_8013D534_14C4E4_Update`. Resolve the symbol to the original phase
in both linkers.

```c
temp_v0 = D_8013D534_14C4E4_Update + 0x800;
D_8013D534_14C4E4 = temp_v0;
```

# Correct ASM

```asm
lui     t7,%hi(D_8013D534_14C4E4)
lh      t7,%lo(D_8013D534_14C4E4)(t7)
...
lui     at,%hi(D_8013D534_14C4E4)
sh      t6,%lo(D_8013D534_14C4E4)(at)
```
