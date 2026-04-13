### Assignment reorderings

`a->x = X; a->y = Y;` may be reordered as `a->y = Y; a->x = X;` if `X`/`a`/`Y`/`b` involve large computations. However, the computations, stack restores and register allocation of `X`/`Y` are still done in original order.

Similarly, the compiler can reorder stores to disjoint globals. This can be used to observe whether a temporary variable was used for an address -- alias analysis does not look at variable values.

If `x` and `y` are stack variables and `X`/`Y` don't involve function calls or branches, the assignment order is generally irrelevant -- the emission order instead depends on when they are used.

### Order of commutative operations

`a + b` and `b + a` tend to generate the same code, and similar for ==, !=, ^, &, |. The order used is not currently known; it seems to depend on at least whether a and b include array indexing, and type casts can also matter (even casting a variable to its own type). Maybe it depends on when a and b were created, and on their complexity? Speculation: this normalization might be done to make deduplication passes more powerful.

**Confirmed example**: `(s16)var_a2 + temp_v0` vs `var_a2 + temp_v0` — adding a redundant `(s16)` cast to `var_a2` changed `addu t4,v0,a2` to `addu t4,a2,v0`, fixing a single-instruction mismatch in `func_8013B384_14A334`. The cast changes how IDO sorts the operands in the commutative `addu`.

**Confirmed example (f32)**: In `func_80014208_14E08`, the expression `D_80032D88 + ((f32)arg1 / D_80038300)` produced `add.s $f0,$f10,$f16` (wrong). Swapping C operands to `((f32)arg1 / D_80038300) + D_80032D88` made no difference. Adding a redundant `(f32)` cast to the global: `(f32)D_80032D88 + ((f32)arg1 / D_80038300)` produced `add.s $f0,$f16,$f10` (correct). The redundant float cast on the LEFT operand made it appear first in the `add.s` instruction.

**Confirmed example (f32, bc1fl delay slot)**: In `func_800819C0_51E70`, the expression `temp_f0 + arg0->unkC` (both f32, temp_f0 cached in $f0, unkC loaded into $f10 via bc1fl delay slot) produced `add.s $f16,$f10,$f0` (wrong). Swapping C operand order made no difference. Adding a redundant `(f32)` cast to the LEFT operand: `(f32)temp_f0 + arg0->unkC` produced `add.s $f16,$f0,$f10` (correct). Pattern: when one float is a cached local variable and the other is a fresh struct load (scheduled into a bc1fl delay slot), the redundant `(f32)` cast on the cached variable forces it to appear as `fs` in the `add.s`.
