# Local Pointer Variables Break Register Allocation in Float Lerp Functions

## Problem

In a function that does `AnimFrameData14`-style field-by-field interpolation, declaring local
convenience pointer variables (`AnimFrameData14 *a0 = (AnimFrameData14 *)arg0;`) produced
register-allocation mismatches (score ~280). The float register sequence and instruction ordering
were already correct but integer temp registers differed: target used `v0`/`v1`/`a2` for some
loads while the compiled code used `t1`/`t2`/`t3`.

## Root Cause

Even though IDO `-O2` uses the argument registers (`a0`…`a3`) as the base registers for all
memory accesses, the *declaration* of pointer local variables (`AnimFrameData14 *a0`, `*a1`,
`*a3`) alters the global register-coloring allocation. The extra "named variable" slots either
occupy `v0`/`v1` for the whole function or change which registers the allocator considers
available for the later per-field temporaries.

The `s16 tmp` variable for field `d` (the only one that needs it — because the assembly loads
`a0->d` before `a1->d`) had a similar but smaller effect.

## Fix

Remove **all** local pointer variable declarations. Write every field access as a direct inline
cast:

```c
void func_8000D384_DF84(AnimFrameData *arg0, AnimFrameData *arg1, f32 arg2, AnimFrameData *arg3) {
    s16 tmp;

    tmp = ((AnimFrameData14 *)arg0)->d;
    ((AnimFrameData14 *)arg3)->d = (s16)(s32)((f32)tmp + (f32)(((AnimFrameData14 *)arg1)->d - tmp) * arg2);
    ((AnimFrameData14 *)arg3)->e = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->e + (f32)(((AnimFrameData14 *)arg1)->e - ((AnimFrameData14 *)arg0)->e) * arg2);
    /* ... same pattern for f, a, b, c */
    ((AnimFrameData14 *)arg3)->g = (u16)((f32)(u32)((AnimFrameData14 *)arg0)->g + (f32)(((AnimFrameData14 *)arg1)->g - ((AnimFrameData14 *)arg0)->g) * arg2);
}
```

Key points:
- Only the **first** field (`d`) needs a `tmp` — that forces `a0->d` to be loaded before `a1->d`
  in the assembly, matching the target's load interleave order.
- All other fields use the pattern `(f32)a0->x + (f32)(a1->x - a0->x) * arg2` — the scheduler
  will reorder the two independent loads (putting `a1->x` first in the binary), and the `add.s`
  will have `base` as its first source operand matching the target.
- The last `g` field needs `(f32)(u32)a0->g` to trigger IDO's dead-branch u32→float pattern
  (bgez + optional add of 2^32, which is never taken for a u16 value).
- A `f32 arg2` parameter at position 2 (after two pointer args) causes `mtc1 a2,$f12` to be
  emitted at the top of the function — correct for an interpolation factor.
