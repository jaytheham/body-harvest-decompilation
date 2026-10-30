# func_8011694C_1258FC: rotation field and hidden-building extents

`incorrect ASM`: Testing `inst->unk8 >> 28` emitted a direct SRL by 28 and tested the highest nibble.

-> `code changed`: Expose the low rotation index through `struct { u32 padRotationHigh : 26; u32 rotationIndexWord : 4; u32 padRotationLow : 2; };` in BuildingInstance's existing word union, and test `inst->rotationIndexWord != 0xF`.

-> `correct ASM`: LW from instance offset 8, SLL by 26, SRL by 28, then compare with 0xF, matching target ROM offsets 0x125FFC–0x126010.

`incorrect ASM`: Initializing `buildingTypes[0x1F].unk14 = 0x1000` stored 0x1000 at offset 0x3F4 from buildingTypes.

-> `code changed`: Set type 31's unk12 to 0x1000 and its unk14 to 0x80.

-> `correct ASM`: The 0x1000 store uses offset 0x3F2, while the 0x80 store uses offset 0x3F4, matching target ROM offsets 0x125F24 and 0x125F4C.

`incorrect ASM`: Reusing the final door-check index j for the initial model lookups assigned their short counter to $s0, although those lookup loops contain no calls.

-> `code changed`: Give the two initial model lookup loops their own s16 lookupId; retain j for later door processing. The optimizer trace previously combined the early and later j live ranges and excluded caller-saved registers because the later ranges cross helper calls.

-> `correct ASM`: Each initial model lookup counter initializes in $v0 and uses $v0 for its shift, comparison, store, and signed-halfword decrement, matching the target counter register. Other function differences remain.

`incorrect ASM`: Reusing idx as both a grid-clear counter across calls and a nearest-building coordinate difference assigned the subtraction result to a saved register.

-> `code changed`: Keep idx for grid clearing and introduce a separate s16 difference for the two call-free nearest-building scans.

-> `correct ASM`: Both coordinate subtractions use $v0, followed by the target signed-halfword SLL/SRA normalization. The later comparisons consume the normalized temporary value rather than keeping the raw subtraction in a saved register.

`incorrect ASM`: The initializer cached the address of D_8015EA28 in S8 across unrelated phases, adding `sw s8, 0x40(sp)` and moving RA to `sp+0x44`.

-> `code changed`: Add the same-address read alias `D_8015EA28_Read = D_8015EA28` to both symbol files, declare it in variables.us.h, and use it only in the level-1 type-flags comparison. Keep the original symbol for the level-2 comparison and other phases. Read currentLevel into the existing level local at the start of the flags loop.

-> `correct ASM`: S8 is no longer saved or restored; RA uses `sp+0x3c`, S0 uses `sp+0x1c`, and S1 through S7 use the target stack offsets. The function remains unmatched.

`incorrect ASM`: `sw v0, 0(a0)` precedes both `lbu ..., 0x1d(v1)` and `lbu ..., 0x1c(v1)` in the door-map lookup.

-> `code changed`: Snapshot `type->unk1A[3]` into the existing byte local and `type->unk1A[2]` into the existing word local before assigning `doorMap->unk0 = lookupId`. Use the snapshots for the increment and first-door test.

-> `correct ASM`: Both byte loads precede `sw v0, 0(a0)`; the increment follows the word store and its byte store occupies the conditional branch delay slot. Register allocation elsewhere remains unmatched.
