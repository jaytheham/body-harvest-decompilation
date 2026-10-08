# Random beam coordinates and temporary accumulation

`func_800D3E3C_E2DEC` uses a word-sized random remainder. Narrowing it to `s16` adds unwanted shifts. Keep the remainder as `s32` and accumulate positive coordinates with `temp += arg0;` before storing `temp + 20`. Writing `(arg0 + temp) + 20`, reversing its operands, or casting the argument produced the same instructions with the remainder and coordinate load assigned to opposite temporary registers. The separate accumulation matched all six additions without changing the subtracting coordinates.

Use array access for the random texture offset, a physical address for the final vertex command, and the target triangle indices `(0, 1, 3)` and `(2, 3, 1)`. Literal divisors 55 and 15 generate the required division checks; named divisor locals are unnecessary. The cleaned function passed full-ROM verification.
