`func_80081F98_16A058`:

```asm
# Incorrect: source pointer and cell receive the opposite registers.
lbu a0,0(v1)
bne a0,a2,notEmpty
bnel a0,t0,nextCell
```

-> Retain a separate identity update after the unsigned byte load:

```c
cell = D_800E6468[width * row + col];
cell |= 0;
```

The identity update emits no instruction, but changes IDO's local-variable allocation weights. Unlike narrowing the value through a cast, it introduces no additional temporary-register allocation and preserves the later marker code.

->

```asm
# Correct: cell v1, source pointer a0; subsequent code also matches.
lbu v1,0(a0)
bne v1,a2,notEmpty
bnel v1,t0,nextCell
```