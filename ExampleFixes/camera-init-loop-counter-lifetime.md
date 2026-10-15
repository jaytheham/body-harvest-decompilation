# Camera initialization: counter lifetime and unrolling

Observed while working on `func_8009811C_A70CC` in `A49A0.c`.
The full function is still unmatched; these observations concern its
five-element `OrbitCam` initialization block.

A dedicated counter produces IDO's fully unrolled initialization: one
peeled camera followed by four cameras addressed through a residual index
of one. Both `s32` and `u32` dedicated counters unroll. Reusing the same
counter in later frame-state checks or counted loops instead produces an
actual loop, even when the later use first overwrites the counter.

Assign the distance before pitch and yaw, and assign target X, then Y,
then Z. The Y load can then precede the zero-Z store, matching the target's
floating-point conversion scheduling. Loading the first camera distance
before its constant pitch/yaw assignments likewise restores the early
halfword load; move its stage-pointer adjustment immediately after that
distance load.

For the initial camera height, `distance + cam.targetZ` preserves the
target's `add.s` with the cached zero value. `distance + 0.0f` removes the
addition.

When replacing a manually expanded loop, remove its unused pointer
declarations. IDO still reserves stack space for unused declarations that
precede live locals; removing two pointers reduced this function's frame
from `0x410` to `0x408`.

## Startup flag snapshot and array lifetime

In this still-unmatched function, a scalar flag local copied from a named
integer temporary was forwarded through initialization calls. IDO saved
the temporary in a second stack slot and reloaded that copy before the
first flag update, producing `beq` rather than the target `beql`.
Declaring the flag snapshot as `u32 flags[1]` and using `flags[0]` retained
the target stack reload and branch-likely sequence, with the same frame
size.

## Destination pointer retained across interpolation

The transition destination is a one-element local pointer array. First
calculate the sine into an existing float temporary, then snapshot the
destination pointer into a working pointer and pass that snapshot to the
interpolation function. Use the same snapshot for the subsequent camera
selection and comparison. This retains the target pointer load after the
sine call and before interpolation, and its saved-register reuse afterward.

Both parts matter here: changing the destination back to a scalar causes
IDO to reload it after interpolation even with the explicit snapshot. The array alone also reloads it. The working pointer can share the existing
scratch union because its other members are dead during this block.
