`func_80081F98_16A058` (partial candidate, CURRENT(35)):

```asm
# Incorrect: narrowing the signed marker offset before adding player X
# keeps the byte load in the result variable's argument register.
lb a0,0(v0)
addu a0,a0,s1
```

-> Change `x = offsets[index]; x += playerX;` to `x = offsets[index] + playerX;` so the signed 16-bit narrowing happens after the full sum. Keep the helper's second marker result in an `s32`; the target indexes directly from the helper's full return register.

->

```asm
# Correct: separate offset temporary and final coordinate register.
lb t4,0(v0)
addu a0,t4,s1
# Correct second helper result: no unnecessary andi v0,0xff.
sll t4,v0,1
```
