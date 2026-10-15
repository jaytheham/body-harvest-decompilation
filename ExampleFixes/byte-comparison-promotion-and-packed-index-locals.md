# Byte comparison promotion and packed index locals

Matched Java `func_802DC738_1F5448` with IDO 5.3 -O2.

The target reads an animation byte, stores its byte form across calls, and separately caches a zero-extended integer for three comparisons. Comparing the `u8 animation` directly (`animation < 4`, `animation == 3`, `animation < 5`) generates the target's apparently redundant `andi ..., 0xFF`. An explicit `animation & 0xFF` adds a promotion/load temporary and shifts the scratch registers. Reading the actor field twice avoids that reload but makes the optimizer cache the raw field in v0, changing the opening registers and spill allocation. A separate integer state local is unnecessary.

Keep the child node and alien type index as distinct byte locals. Reusing one variable for both changes its register allocation. Group `animation`, `child`, `jointId`, and `typeIndex` together before the actor pointer. The fourth byte occupies an existing alignment gap. Declaring the type index after the coordinate/trig locals instead gave a 49-byte initial reservation; the first four-byte spill rounded to -56. Grouping the bytes reduces the reservation to 48 and moves the spill chain up four bytes, exactly matching the target. No padding is needed.

Read the animation after the two node lookups in source order. AS1 hoists its load into the earlier latency slot, but the source order determines the target scratch-register sequence.

Use a signed short angle loaded directly from the joint, passing it to the declared trig functions without explicit masks or casts. Masking the angle before storing it changes the raw-load register; masking at call sites can introduce an extra normalization move. Ordinary s32 transform outputs and implicit argument conversions produce the target halfword reads; unions exposing their low halfwords were unnecessary.

The two -166.0 array placeholders and their unused externs must be removed when using literals in the enabled function. Both generated doubles then occupy the target rodata addresses.

Verified by `tools/make.ps1` reporting `build/bh.us.z64: OK` and a function diff score of 0.
