# Descending terrain loop and uninitialized maximum

Matched `func_802DCA54_1F5764` in `src.us/overlay_level/java/1ED9E0.c` with IDO 5.3 -O2.

- A descending `for (step = 3; step >= 0; step--)` avoids caching the terrain helper output address in an extra saved register. The equivalent do/while form introduced that cache and enlarged the frame.
- Store the computed sample coordinates in meaningful `s16 sampleX` and `sampleZ` locals before calling the terrain helper. These reproduce the target stack layout without padding.
- The target reads the maximum-height local before any write. Leave that local uninitialized to reproduce the original behavior. A separate uninitialized seed copied into the maximum produced almost identical code, but scheduled its load before the loop's invariant type-size constant. Direct use of the maximum fixes this ordering.
- Read the child node before computing the two distance deltas. This restores the target temporary registers and opening load schedule.
- Cast angle differences to `u16` rather than masking with `0xFFFF`: the cast emits the target normalization move before each trigonometric call.

Verified with the required native build (`build/bh.us.z64: OK`) and function diff score 0.
