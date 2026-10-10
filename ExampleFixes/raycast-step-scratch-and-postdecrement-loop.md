# Raycast step scalars, shared scratch, and post-decrement loops

`func_800E95BC_F856C` now matches the full ROM with IDO 5.3 at `-O2`.
The absolute-value ternaries documented in
`abs-and-source-shape-scheduling-levers.md` were only part of the solution.

Use independent `s32 stepX`, `stepY`, and `stepZ` locals in that declaration
order. They spill to `sp + 0x34`, `sp + 0x30`, and `sp + 0x2C`. An array
allows IDO to delay stores of division results, changing the target's
instruction order. Keep a separate iteration count instead of overwriting
the incoming Z parameter; this removes a copy in the second absolute-value
block and gives the target's delta register allocation.

In the X-dominant path, select the absolute X delta into a scratch scalar
with explicit `if/else`, then assign `nSteps = scratch >> 8`. Reuse that
same scratch scalar for both paths' selections of `-0x100` or `0x100`.
These are non-overlapping values, so one variable is sufficient. This
source shape makes the X-path divisions use the cached `s0` count while
the Z-path divisions use `v1`, exactly as in the target. A single ternary
assigned directly to the count kept an extra divisor value live and
shifted register allocation throughout the function. Sharing scratch only
within the X path left nine register differences; sharing it with the
Z-path sign selection removed them all.

The sampling loop is `while (nSteps--)`. An explicit zero guard followed
by a decrement and `do/while` has equivalent behavior but omits the
target's copies of the old counter around the post-decrement tests.

The existing four-word unused stack reservation remains necessary for
the target's 0x48-byte frame; removing it produces a 0x38-byte frame even
when the executable instruction sequence otherwise matches. It is
documented in the C source rather than replaced with extra calculations.

After cleanup, `tools/make.ps1` reports `build/bh.us.z64: OK`, and the
function's assembly diff score is zero.
