### Float register reuse: reassign arg0 to reciprocal inside >1.0 branch

When a function computes `1.0 / arg0` (as double) then converts back to float,
and `arg0` was in `$f12`, the target often shows `cvt.s.d $f12,$f6` (reusing
arg0's register). To achieve this, **reassign arg0 to the reciprocal** inside
the branch instead of using an inline expression:

```c
// WRONG — cvt.s.d goes to $f8, 1024.0f to $f10, misaligns all subsequent regs:
if ((f64) arg0 > 1.0) {
    return (s16) ((0x4000 - table[(s32) ((f32) (1.0 / (f64) arg0) * 1024.0f)]) * sign);
}

// CORRECT — cvt.s.d reuses $f12, 1024.0f gets $f8, mul result $f10, trunc $f16:
if ((f64) arg0 > 1.0) {
    arg0 = (f32)(1.0 / (f64)arg0);
    return (s16) ((0x4000 - table[(s32) (arg0 * 1024.0f)]) * sign);
}
```

**Why it works**: With the inline form, IDO evaluates the LEFT sub-expression
`(f32)(1.0/...)` first and assigns it the first-free register (f8). The
1024.0f constant gets the next free (f10). The assignments cascade wrong.

With the reassignment form, IDO allocates `cvt.s.d` to `arg0`'s existing
register `$f12` (assignment target). The subsequent expression `arg0 * 1024.0f`
then allocates the constant first to the lowest-free single register (f8, since
f6/f7 are occupied by the div.d double result), and the mul result to f10
(gap-fill between f8 and f12). Trunc result gets f16.

This also fixes the NORMAL path register allocation as a cascade effect: with
the >1.0 path's highest register now f16 (instead of f18), the normal path's
1024.0f constant gets f18 (loaded in the bc1fl delay slot), mul result gets
f4 (recycled), trunc gets f6 (recycled) — all matching the target.
