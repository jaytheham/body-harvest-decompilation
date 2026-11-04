incorrect ASM: The peeled stores at func_80072300_15A3C0 entry used two LUI instructions, storing D_800E6468[0] before the register saves.

-> code changed: Define the 0x132-byte D_800E6468 array tentatively in variables.us.h only when INSIDE_158330_BSS is enabled by inside/158330.c; retain extern declarations for other translation units.

-> correct ASM: One LUI precedes both constant loads; the register saves follow, then SB to offsets 0x6469 and 0x6468 share AT. The complete initialization loop and entry sequence match the target. The function still has a separate unmatched invariant-address allocation in case 16.
