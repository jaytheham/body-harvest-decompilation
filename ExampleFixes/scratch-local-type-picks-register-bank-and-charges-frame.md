# Scratch types, reused locals, and pointer-spill padding

`func_802E015C_3242AC` matched with the following changes.

The guessed `VehicleInstance *` parameter read offsets 0x1A, 0x1B, and 0x1C. The target instead accesses signed bytes at 1 and 2, a word at 4, a byte at 8, and a pointer at 0xC. Retyping the parameter as the existing `Unk80222A78 *` and using its `unk8`, `unk1`, `unk2`, `unk4`, and `unkC` fields restored those loads and stores (score 1800 to 1120).

Use a named `u8 typeIndex = trigger->unk8` before indexing `alienInstances`. This puts the index in the target `$v0` instead of the inlined expression's `$t6`. Declare the coordinate scratch values `u` and `v` as `s32`, replacing `s16`, to place them in the target `$a1`/`$a2` register bank.

Reuse those same `u`/`v` locals for the initial coordinates and later azimuth differences. This reduces the frame from 0x38 to the target 0x30 while preserving instruction order and registers. An unused `s32` immediately after the alien pointer moves its spill from 0x1C to 0x18 without growing the frame. Keeping the byte index in its own block completes the match: diff score 0 and `build/bh.us.z64: OK`.
