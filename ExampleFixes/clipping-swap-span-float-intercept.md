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

`incorrect ASM`: The draft with no discarded conditions uses `$f14` for the starting X coordinate and `$f2` for the quotient. The linked score is 115 across 21 differing words.

-> `code changed`: Retain the earlier allocation conditions for the Y swap and the two return paths. Use `slope` to save the upper X bound during the X swap and leave that swap free of an empty condition. Assign `dx = arg6 - arg4` before the vertical path's zero-Y-span test and use it as the denominator.

-> `correct ASM`: The linked function bytes equal those of the earlier four-condition draft. The starting X coordinate uses `$f2` and the intercept uses `$f16`. The remaining six differing words all use `$f14` where the quotient requires `$f0`, for a linked score of 30.

`incorrect ASM`: In the six-word draft, IDO's optimizer allocates the `slope` local to `$f0` and the division expression to `$f14`. The two live ranges interfere in both division blocks. The assembly listing shows a copy from `$f14` to `$f0` after each initial division, which the assembler folds into the surrounding uses.

-> `code changed`: In a scratch allocator replay, exchange the colors for the local and the division expression while pinning the starting X and Y coordinates to `$f2` and `$f12`. The unforced replay produces the same object code as the standard compiler.

-> `correct ASM`: The initial divisions and all their quotient operands use `$f0`. The eight final-coordinate register fields then use `$f14` where the target also requires `$f0`, including the destination of the final horizontal division. The replay separates the quotient mismatch from the result mismatch and leaves both results to be reconciled in C.
