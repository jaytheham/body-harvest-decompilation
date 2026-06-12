### bc1fl delay slot float register allocation + constant reload

In `func_800F3EE4_102E94`, the target uses `bc1fl` with `sub.d $f6,$f0,$f2` (ratio - 0.5) in the delay slot, while the C code generates `sub.d $f4,$f0,$f2`. This register difference ($f6 vs $f4) cascades throughout the else block, causing all float temporary registers to differ from the target.

Additionally, the target reloads `0.5` into fresh registers `$f16/$f17` in the else block instead of reusing `$f2/$f3` (which already hold `0.5` from the function prologue). This causes a different constant loading order (target: load 0.5 first, then 1.0; current: load 1.0 first, reusing $f2 for 0.5).

**Root cause**: IDO's register allocator assigns different float registers for the `ratio - 0.5` subexpression that gets hoisted into the bc1fl delay slot. The register choice ($f4 vs $f6) depends on which float register is also used in the true branch and considered "free" for the annulled delay slot. This appears to be determined by internal compiler heuristics that cannot be influenced by C code restructuring.

**Attempted fixes that did NOT work**:
- Adding intermediate `f64`/`f32` variables for subexpressions
- Moving `(f64)(f32)(ratio - 0.5)` before the `if` statement
- Using `else { f64 diff; ... }` block-scoped variables
- Adding redundant type casts
- Reordering commutative operations in the true branch
- Adding `if(1) { }` blocks to create basic block boundaries
- Changing the unused `s32 arg4` parameter type
- Using ternary operator instead of `if/else`
- Using comma operator and same-line statements
- Using `} return ...` (no newline)
- Computing `1.0 - ... / 0.5` as an intermediate variable
- Computing `(f32)(ratio - 0.5)` as an explicit `f32` variable

**Score**: 1280 (all instructions correct types, only register allocation differs in else block)

**To match**: Would need a way to force IDO to use `$f6` for the bc1fl delay slot computation and reload `0.5` into `$f16/$f17` instead of reusing `$f2/$f3`. None found yet.
