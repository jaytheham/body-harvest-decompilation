### Float register allocation from expression order

When two float variables `temp_f0` and `temp_f2` have their register allocation swapped (i.e., your output has `cvt.s.w $f0,...` but target has `cvt.s.w $f2,...`), IDO assigns the first _computed_ expression to `$f2` and the result of the next to `$f0` when the first expression involves a division (or multi-step float op). The fix is to **compute the dependent expression first** even if the other variable is declared first:

```c
// WRONG register order (first cast gets $f0):
f32 temp_f2 = (f32)*arg0;
f32 temp_f0 = temp_f2 / (f32)arg2;

// CORRECT register order (first cast gets $f2):
f32 temp_f0 = (f32)*arg0 / (f32)arg2;   // IDO puts (f32)*arg0 in $f2 as a subexpr
f32 temp_f2 = (f32)*arg0;               // IDO reuses /CSE the $f2 value
```
