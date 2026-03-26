### Three s16-param `while(i--)` array search: lock a1/a2 with s32 copies + half-first addition order

**Pattern**: A function with three `s16` parameters searches a struct array with `while(i--)` using `D_arr[i]`, performing paired AABB bounds checks per element.

**Register allocation problem**: IDO's CSE for the lh (half-extent) values steals `a1` (or `a2`) because those arg registers are not "locally live" during the earlier dimension's checks. The stolen arg gets displaced to a callee-save (`s0`/`s1`), introducing a stack frame.

**Fix**: Lock `a1` and `a2` by declaring explicit `s32` copies at function entry:
```c
s32 a1;
s32 a2;
a1 = arg1;
a2 = arg2;
```
Then use `a1` and `a2` (not `arg1`/`arg2`) throughout the loop body. This forces IDO to commit a1/a2 as callee-live registers, leaving t0–t9 free for the CSE lh/sra values. No callee-saves or stack frame are generated.

**Commutative addu operand order**: For the upper-bound condition, write the half-extent (lh value) FIRST:
```c
// lower bound — center (sra) first, half (lh) second:
if (a1 < (D_arr[i].unkCenter >> 16) - D_arr[i].unkHalf) continue;
// upper bound — half (lh) first, center (sra) second:
if (D_arr[i].unkHalf + (D_arr[i].unkCenter >> 16) < a1) continue;
```
IDO determines `addu` operand order by CSE live-range length. The CSE for `center` (sra result, first in the subtraction expression) is extracted first by the optimizer and gets the *longer* live range, so it appears as the first (rs) operand in `addu`. Writing `half + center` in the upper-bound check makes the subtraction's left-to-right ordering of the first condition determine extraction order → `addu t6, t4, t0` (center first) matches target.

**Full template** (see `func_8012E114_13D0C4` in `src.us/overlay_gameplay/outside/buildings.c`):
```c
s32 func(s16 arg0, s16 arg1, s16 arg2) {
    s32 i;
    s32 a1;
    s32 a2;
    a1 = arg1;
    a2 = arg2;
    i = COUNT;
    while (i--) {
        if (D_arr[i].active == 0) continue;
        if (arg0 < (D_arr[i].xCenter >> 16) - D_arr[i].xHalf) continue;
        if (D_arr[i].xHalf + (D_arr[i].xCenter >> 16) < arg0) continue;
        if (a1 < (D_arr[i].yCenter >> 16) - D_arr[i].yHalf) continue;
        if (D_arr[i].yHalf + (D_arr[i].yCenter >> 16) < a1) continue;
        if (a2 < (D_arr[i].zCenter >> 16) - D_arr[i].zHalf) continue;
        if (D_arr[i].zHalf + (D_arr[i].zCenter >> 16) < a2) continue;
        if (D_arr[i].callback == 0) continue;
        return i;
    }
    return -1;
}
```
Score progression: fully-inlined (1441) → +a1 lock (1307) → +a2 lock (30) → half-first order (0).
