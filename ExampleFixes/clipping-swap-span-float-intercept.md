`incorrect ASM` in the score-50 `func_8010EF40_11DEF0` candidate: the shared swap/intercept scratch occupies `$f14`, displacing the line intercept from `$f16`.

```asm
div.s   $f16,$f18,$f4
mul.s   $f6,$f16,$f2
sub.s   $f14,$f12,$f6
mul.s   $f8,$f16,$f20
add.s   $f0,$f8,$f14
```

-> `code changed`: retain an empty comparison between the source-bound store and the scratch's last use in each swap. This extends the scratch's allocation span without adding references to the scratch.

```c
if (arg2 < arg0) {
    intercept = arg2;
    arg2 = arg0;
    if (arg0 == arg1) {} arg0 = intercept;
}
if (arg3 < arg1) {
    intercept = arg3;
    arg3 = arg1;
    if (arg0 == arg1) {} arg1 = intercept;
}
```

-> `correct ASM` for the line intercept: `$f16` now holds the subtraction result, with unchanged instruction order and stack layout. The empty comparisons emit no instructions. This is a partial fix: the slope still uses `$f14` instead of `$f0`, leaving function diff score 30.

```asm
div.s   $f14,$f18,$f4
mul.s   $f6,$f14,$f2
sub.s   $f16,$f12,$f6
mul.s   $f8,$f14,$f20
add.s   $f0,$f8,$f16
```
