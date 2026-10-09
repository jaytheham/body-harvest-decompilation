# Obstacle-span break and coordinate ABI

`func_800831A4_92154` stops its first scan when the signed angle difference from the low boundary becomes negative. The original C only updated the boundary and continued. Put a `break` in that branch and increment the span count once after the remaining branches; this reproduces the shared increment and early exit.

Its coordinate helper `func_80083060_92010` takes full-width coordinates and narrows them internally. Changing its first two parameters to `s32`, while casting to `s16` at the internal helper calls, preserves the matched callee and removes the caller's extra shift pairs. Keep the caller coordinates as `s32`. Store the radius as an integer so its conversion to the cached double occurs after the facing test. Read facing directly rather than naming another local.

Moving the register-held X and Z locals from the end of the declaration list to the beginning lowered all stored bytes and halfwords by eight bytes without changing the frame or registers. Initialize the three byte sentinels with `chosenBuilding = blockedBuilding = hitBuilding = 0xFF`; separate assignments produce the opposite temporary-register order. Write the heading, then flags, then timer to retain the target temporary allocation. The full ROM checksum verified OK.
