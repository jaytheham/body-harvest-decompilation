# Incorrect ASM

Explicit `randomY = (s32)(randomY + beamOffset)` coordinate assignments delayed coordinate conversions and cycled floating registers. Two named double caches produced a frame of `0xE8` rather than `0xD8`. A nested byte particle assignment left compiler spill homes four bytes below the target.

# Code changed

Use `randomY += beamOffset` and the equivalent compound assignments for the other beam coordinates. Convert both invariant beam dimensions in a dead assignment to an existing scratch before the loop; IDO reuses those conversions in the loop without emitting the dead sum. Reuse the dead half-depth scratch for the previous X coordinate. Separate the byte particle assignment from its first setter call.

# Correct ASM

`func_800AA340_B92F0` now has the target `0xD8` frame, all named and compiler spill offsets, all general and floating register assignments, and both beam-loop schedules. Its full native diff falls from 2251 to 697. The remaining differences are one byte argument normalization and two constant-load schedules; the function remains guarded by `NON_MATCHING`.
