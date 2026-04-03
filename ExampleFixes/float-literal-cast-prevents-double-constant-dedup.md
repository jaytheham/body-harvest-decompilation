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

**Remaining caveat**: The `(f64)0.5f` trick does NOT fix a 2-instruction scheduling swap in the prologue (`andi t6,a2,0xffff` vs `sw a0,0x18(sp)` ordering) that causes cascade register name differences (t7 vs t9 in prologue, t8 vs t0 post-jal). This scheduling swap appears to be determined by whether an intermediate register (t8 vs a0) is used for the sins argument `sra` computation, and cannot be forced through known C expression changes.

**Pattern from `func_800065A4_71A4` (core/53F0.c):**
```c
s16 func_800065A4_71A4(s16 arg0, s16 arg1, u16 arg2) {
    s32 sins_val = sins(((s32)arg2 >> 1) - 0x4000);
    return (s16)(s32)((f32)arg0 + ((f32)(arg1 - arg0) * (f32)(((f64)(f32)sins_val / 32768.0) * (f64)0.5f + 0.5)));
}
```
