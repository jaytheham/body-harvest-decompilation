### `while (i--)` for `bnez` + delay-slot decrement loops

If the target loop tail is `bnez reg, loop` with `addiu reg, reg, -1` in the delay slot, prefer `while (i--)` over `if` + `do/while` or manual `if/break` structures.

In one buildings.c case, this rewrite produced both:

- the exact tail pattern (`bnez s0` + delay-slot decrement), and
- the expected early `move v0, s0` before the zero check.
