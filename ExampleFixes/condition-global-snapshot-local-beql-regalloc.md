### `||`/`&&` condition on a global + store of that global: named snapshot local fixes `move` + enables `beql`

**Symptom** (`func_8001A828_1B428` in `src.us/core/1B100.c`, score 620 → 0): An `if` whose condition is
`(G == 0) || ((G >= 9) && (G < 0x12) && (X != Y))` where `G` is a global, followed by a body that starts with
`W = G;` (storing that same global). Writing `G` directly everywhere gave:
- an extra `move v0,v1` (IDO copied the loaded global value from `v1` into `v0` to feed the `slti` comparison temps),
- the final condition branch compiled as plain `beq` with a `lui v0, %hi(D_8006C6C0)` (early array-base) in its delay slot,
- instead of the target's `beql t8,t9, skip` with a speculative `lhu t3, 0(a2)` (reload of `G` for the *next* if) in the delay slot.

**Root cause chain**: Because `G` was read directly in both the condition and the store, IDO put the loaded value in `v1`
but allocated the comparison temp to `v0` (needing the `move`). That kept `v0` "busy", so IDO hoisted a *different*
array base (`&D_8006C580`, reg `t4`) into the pre-branch slot instead of `&D_8006C6C0` (`v0`), and pushed `lui v0` into the
branch delay slot — blocking the `beql` + speculative-load pattern the target has.

**Fix**: Take a named snapshot of the global and use it in BOTH the condition and the body store:
```c
s32 cur = D_8006C6C6;
if ((cur == 0) || (((cur >= 9) && (cur < 0x12)) && (D_8006C6C0 != D_8006C6C2)))
{
    D_8006C6CC = cur;   // reuses the SAME register as the condition comparisons
    ...
}
```
Now the value lives in one register (`v1`) for the comparisons and the store → no `move`.
`v0` is freed, so IDO hoists `lui v0, %hi(D_8006C6C0)` before the branch (matching target), and the branch delay slot
is free for `lhu t3, 0(a2)` → `beql` generated exactly like the target.

**Key takeaways**:
1. When a global is both the subject of a compound condition AND stored first in the if-body, name it once
   (`s32 cur = G;`) and reference `cur` in both — IDO then keeps the value in a single register.
2. A spare register caused by that single-register reuse lets IDO pre-hoist the *correct* array-base `lui` before the
   branch and emit `beql` with a speculative reload in the delay slot. (Related: `beql-blocked-by-early-array-base-lui-in-a0.md`.)
3. The `cur` must be a plain `s32` snapshot; after the body mutates `G`, the target reloads `G` for later code
   (`lhu`), so the snapshot's live range ends at the first body store — do NOT reuse `cur` after `G` is rewritten.
