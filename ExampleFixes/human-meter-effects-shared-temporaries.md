# Shared temporaries in human-meter effects

Matched `func_800BDDCC_CCD7C` in `BF9C0.c`.

Use the existing `EffectRgb` and `Vec2_S16` types for contiguous effect arguments. Separate scalar locals cast to those pointers do not guarantee the intended layout.

Read the state and timer globals directly. Caching them in separate byte locals added moves, live ranges, and stack space.

One `s32` temporary serves three sequential roles: the old building countdown value, unsigned tick counts, and terrain heights. Sharing it reproduces the target register allocation and the 0x60-byte frame. Keeping separate tick and height locals changes hundreds of instructions. Cast to `u32` when taking tick remainders, preserving the target `divu` instructions.

For the building countdown, explicitly save the current index into that temporary, decrement the index, then test the saved value. A bare post-decrement condition uses V0 instead of the target V1.

When terrain height is used once immediately in an explosion call, put the height lookup directly in its argument expression. A separate assignment reordered the A2 load between the height sign-extension instructions. Matched reference: `func_800E75A0_F6550`.

The `(u8)` conversion of `D_800314C4` remains necessary because that global is declared `s8`. Removing it changed signed loads and comparisons. The timer is already `u8`, so its redundant casts were removed.

Validation: full ROM `build/bh.us.z64: OK` and function diff `CURRENT (0)`.
