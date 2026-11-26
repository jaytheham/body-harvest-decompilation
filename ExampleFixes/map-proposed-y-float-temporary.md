`incorrect ASM`

In `func_8009811C_A70CC`, reusing the cosine scratch for the Y displacement gave the subtraction and following bounds comparisons different floating-point temporaries:

```asm
sub.s   $f12,$f4,$f8
add.s   $f10,$f14,$f12
...
cvt.s.w $f4,$f6
c.le.s  $f4,$f2
```

-> `code changed`

Keep the cosine scratch unchanged while computing the proposed Y position. Put its displacement in the existing floating-point temporary `var_f12`, then add `oldY` to that result.

```c
var_f12 = (sp2C8 * sp2C0) - (temp_f0 * sp2BC);
proposed.y = oldY + var_f12;
```

-> `correct ASM`

The displacement uses `$f10`, and the proposed position uses `$f6`. This also recovers the conversion and compare registers in the bounds tests.

```asm
sub.s   $f10,$f4,$f8
add.s   $f6,$f14,$f10
...
cvt.s.w $f8,$f4
c.le.s  $f8,$f2
```
