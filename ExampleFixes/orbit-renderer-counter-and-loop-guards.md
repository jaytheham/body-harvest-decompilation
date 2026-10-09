# Orbit renderer counter and loop guards

`func_800D5AF4_E4AA4` matched with a plain `while (curr != -5 && curr != -6)` loop. A named sentinel, or early returns followed by a do/while, introduced an extra constant load or changed the saved register allocation.

Use the existing `SpinnerMotionState` for signed velocity bytes. Its parent counter has an unsigned halfword view in `SpinnerParentState`. Loading that counter into `radius`, then shifting `radius`, retains the target first LHU. The angle reads the existing signed field through a u16 conversion; the separate typed views retain the second LHU instead of merging both reads.

Read `gameplayMode` directly at the final condition. Assigning it in each velocity branch made IDO preserve its address across the loop, changing the saved registers and frame.

For zero X velocity, assign `next = 0` inside the positive Z branch, rather than as a default before the branch. IDO still hoists the zero assignment, but places the global-address LUI before it, as in the target.

Declare the orbit helper before the caller: its narrow parameter types generate the target sign and zero extensions at all three calls.

Revalidated 2026-10-10 using tools/make.ps1: the guarded body already contained these fixes, and removing only its NON_MATCHING wrapper produced an exact diff and full ROM OK. No rodata changes were required.
