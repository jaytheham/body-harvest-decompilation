# An unused final halfword can move CFE call spills

In `func_801052E8_114298`, three addressed `s32` coordinate locals ended at
`sp+0x58`. An unused `s16 trig` followed them. The function's implicit `coss`
result spill was at `sp+0x4C`, and a coordinate argument preserved across the
call was at `sp+0x44`.

Removing only the unused final `s16 trig` moved those spills to the target
offsets `sp+0x50` and `sp+0x48`. The frame remained `0x90`, the coordinate
locals stayed in place, and no instructions were added or removed.

Do not assume an unused final declaration is irrelevant to compiler-created
temporaries merely because the frame size is unchanged. Inspect actual spill
offsets in the full translation-unit build. The final function keeps inline
trig calls without unused declarations and passes the full ROM checksum.
The shared-field-cache mechanism is documented in
`reused-flags-cache-and-register-coloring-priority.md`.
