# Human death random draw and subtype reload

Matched `func_80089574_98524` with IDO 5.3 -O2 -mips2 -32.

Both particle paths require a fourth random call. Its signed return supplies `% 0x23 + 0x69`; using the cached subtype instead omits a call and forces the subtype to survive across the random calls. Store the first three truncated results in a u16 array to obtain adjacent halfword stack slots.

Use an s32 subtype local for byte loads that are only compared. A u8 local made IDO preserve an extra promoted copy. After the explosion helper, reload the subtype from the instance inside the helper-call branch. Retaining the pre-call value introduced a stack spill and changed the frame from 0x50 to 0x58.

The final particle condition combines the subtype test and frame-bit test in one if, followed by the alternative explosion test. The nested version omitted that alternative path when the subtype matched but the frame bits did not. Full ROM verification reports `build/bh.us.z64: OK`.
