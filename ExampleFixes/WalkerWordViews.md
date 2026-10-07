# Walker word views and vehicle scan unrolling

In outside/101840.c, the walker limb data is accessed as both halfwords and words. A union containing the existing halfword fields and a `s32 words[9]` view preserves the layout and lets word copies use array access rather than pointer casts. In func_800F2D48_101CF8, removing the duplicate write to word 5 restores the target store ordering.

func_800F34AC_10245C takes a u8 index; its diagnostic calls only pass the format string. These choices recover the target 0x18-byte frame and byte spills.

func_800FAD10_109CC0 uses a standard s32 loop over 128 vehicleInstances, appending active indices with D_80158E80[D_80158FD8++]. IDO unrolls this loop by four, reproducing the target. Manually unrolling it with an s8 counter obscures this pattern.
