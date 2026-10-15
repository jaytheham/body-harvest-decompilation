### Float literal cast `(f64)0.5f` prevents double constant deduplication

When a function computes `/ 32768.0 * 0.5 + 0.5` (two uses of the same `0.5` double constant), IDO's GVN deduplicates both `0.5` instances into a single register pair (e.g., `$f0:$f1`). This produces wrong constant loading order and wrong register allocation for `mul.d` and `add.d`.

**Wrong (deduplicated 0.5 in f0:f1, loaded BEFORE 32768.0):**
```c
return ... (f32)(((f64)(f32)sins_val / 32768.0) * 0.5 + 0.5);
```
Generates: `lui at,0x3fe0; mtc1 at,$f1` (0.5 first!), then `lui at,0x40e0; mtc1 at,$f11` (32768.0 second).

**Correct (two separate constants, no dedup, 32768.0 loaded first):**
```c
return ... (f32)(((f64)(f32)sins_val / 32768.0) * (f64)0.5f + 0.5);
```
Using `(f64)0.5f` (float literal cast to double) for the **multiply** 0.5 and `0.5` (double literal) for the **add** 0.5. IDO's GVN sees them as different expression types (`CVT_DOUBLE(float_constant)` vs `DOUBLE_CONSTANT`) and does NOT deduplicate.

Result: 32768.0 loads first into `$f10:$f11`, then 0.5 loads into `$f18:$f19` for `mul.d`, then 0.5 reloads into `$f6:$f7` (reusing `$at` that still holds 0x3FE00000) for `add.d`. Score improved from ~1485 to ~110.
