`incorrect ASM`

In `func_801206B0_12F660`, byte-sized row counters caused truncations on every search step and extra branches. Direct signed-byte conversion of the X cell left all following temporary registers rotated even after the loop structure matched.

-> `code changed`

Keep both cell coordinates as word locals. Load the shifted X coordinate into the existing signed-halfword index scratch, then assign `xCell = (s8)(idx & 0xFF)`. Use do/while searches with row updates first and building-pointer assignments before the short-circuit exit conditions. Read the model through `buildingTypes[index].model`.

-> `correct ASM`

The loops narrow coordinates only at the lookup calls, assign each building pointer before testing the sentinel, and repeat through branch-likely delay-slot row updates. The byte mask folds away while preserving the target temporary allocation: the initial shift uses t8, sign conversion uses t6, and the later temporary sequence matches. Both US and EU ROM checksum builds pass.
