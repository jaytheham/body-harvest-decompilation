`incorrect ASM`: In `func_800D0614_DF5C4`, passing `arg0 + (s32)(dir.x * spread)` to the lightning constructor schedules the argument moves and random remainder too early and changes the scratch registers.

-> `code changed`: Narrow the X displacement to a signed halfword before adding it, as for the Y and Z displacements: `arg0 + (s16)(s32)(dir.x * spread)`.

-> `correct ASM`: IDO schedules all three coordinate arguments and `mfhi` in the target order and uses the target scratch registers through the call. The entire US ROM matches.
