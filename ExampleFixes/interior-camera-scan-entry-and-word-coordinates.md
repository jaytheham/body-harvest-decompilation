`func_800813B4_169474`:

```asm
# Incorrect direct array-member spelling reverses the ADDU operands.
sll t8,a3,1
addu a1,s2,t8
lb t9,0(a1)
```

-> Name the typed entry pointer through array access, retain raw coordinate sums in word-sized locals, then explicitly narrow each sum:

```c
entry = &var_s2[var_a3];
x = entry->unk0 + temp_x;
x = (s16)x;
/* Bounds check for x. */
y = entry->unk1 + temp_y;
y = (s16)y;
```

Using only the entry pointer reverses the ADDU correctly but exchanges its register with X. Naming both full-word sums before narrowing restores entry `a1`, X `a0`, and Y `v1` without changing temporary-register allocation. Reuse the dead endpoint local for the final result, and declare the 0/1 selector as `s16` beside the two coordinate halfwords; this restores the backup home at `0x2c(sp)` while retaining the `0x60` frame.

->

```asm
# Correct operand order, register binding, and normalization.
sll t8,a3,1
addu a1,t8,s2
lb t9,0(a1)
# ...
addu a0,t9,t2
sll t6,a0,16
sra t7,t6,16
move a0,t7
```

Both full US/EU ROM checks pass. All accesses remain typed struct/array accesses.