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

### Unresolved bound expression in `func_800AC5BC_BB56C`

The current matching instruction sequence for the collision bound is:

```c
speedAbs = (-vehicle->unk58 < vehicle->unk58)
    ? vehicle->unk58 : -vehicle->unk58;
limit = speedAbs * 30.0f + (vehicleTypes[vehicle->unk1A].unk36 >> 1);
```

The remaining discrepancy is confined to four instructions: the target
loads 30 into `f4`, multiplies into `f6`, converts the half length via `f8`
into `f10`, and adds `f6 + f10`. Current code converts the half length via
`f4` into `f6`, loads 30 into `f8`, multiplies into `f10`, and adds the same
physical registers in the same order. The final integer result is correct,
but the ROM cannot match until these register assignments match.

Tested without improvement: reversing addition or multiplication operands;
splitting out a single-use float product; explicit signed casts on the field
or final result; `int` instead of `s32` for the bound; a comma temporary for
the integer or converted dimension; a constant local; repeated dimension
ANDed with itself; explicit if/else for the absolute speed. Double casts and
double literals add conversions or double arithmetic. Double integer
complement adds two NOR instructions.

A named integer half-length assigned before the sum gives the desired FP
registers but adds a move and changes integer allocation. A subtraction of
the negated float half-length also gives the desired multiply/conversion
registers, but retains NEG and SUB instructions. Division of the product by
1.0f becomes an extra multiply by one. These are diagnostic results, not
accepted fixes. Avoid treating a register improvement with these extra
instructions as a match. The clean version remains at diff score 30 with
all 288 instructions structurally matching.