`incorrect ASM`: In the probe-free `func_8010EF40_11DEF0` draft with separate bound-swap lifetimes, IDO loads the starting Y coordinate with `lwc1 $f14, 0x2c($sp)`.

-> `code changed`: In the vertical clipping path, assign `originY = arg5` before the two-direction range check. Use `originY` for the Y span, the horizontal-line result and its bounds check, and the line intercept.

-> `correct ASM`: The starting Y load is `lwc1 $f12, 0x2c($sp)` and its consumers use `$f12`. The enabled C draft has the target instruction order and stack layout. Its 21 remaining differing words use `$f14` for the starting X coordinate and `$f2` for the intermediate slope instead of `$f2` and `$f0`, respectively.
