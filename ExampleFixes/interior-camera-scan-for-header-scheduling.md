`func_800813B4_169474`:

```asm
# Incorrect: initial index move precedes hoisted address setup.
move a3,t6
addiu t4,t4,0x6464
```

-> Replace the first scan's do/while with `for (var_a3 = (s8)sp5F; !done.value; var_a3 = (s8)((var_a3 + 1) % var_s1))`. Keep initialization and update on the same source line as the loop header.

->

```asm
# Correct: invariant addresses precede the initial index move.
addiu t4,t4,0x6464
addiu t5,t5,0x6460
addiu s0,s0,0x6468
move a3,t6
```