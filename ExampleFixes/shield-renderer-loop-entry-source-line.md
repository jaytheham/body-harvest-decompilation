`incorrect ASM`

In `func_800E5538_F44E8`, separate source lines for the shield-count condition, double-constant assignment, and `do` opener scheduled the constant address before the branch and put the divisor load in its delay slot:

```asm
move  s2,zero
lui   at,%hi(D_801441E0_153190)
blez  a2,exit
li    s4,0xc8
lui   s1,%hi(D_8005BB38)
ldc1  f20,%lo(D_801441E0_153190)(at)
addiu s1,s1,%lo(D_8005BB38)
```

`code changed`

```c
var_s2 = 0;
if (D_80152C96 > 0) { do {
```

Keep the condition and `do` opener on the same physical source line. The final implementation uses inline `1.7` in the alpha expression instead of the named double local; IDO retains the same cached constant and loop-entry schedule.

`correct ASM`

```asm
move  s2,zero
li    s4,0xc8
blez  a2,exit
lui   at,%hi(D_801441E0_153190)
lui   s1,%hi(D_8005BB38)
addiu s1,s1,%lo(D_8005BB38)
ldc1  f20,%lo(D_801441E0_153190)(at)
```

The complete function now matches and both ROM checksums pass.
