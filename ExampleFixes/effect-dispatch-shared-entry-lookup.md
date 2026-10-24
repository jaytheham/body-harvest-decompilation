`incorrect ASM`: In func_800E0F4C_EFEFC, branch-local effect-entry assignments delayed the lbu a3,8(v1), reversed outgoing zero stores, and emitted beqz instead of the target beqzl at F0B28.

-> `code changed`: Assign entry = &D_8013DD40_14CCF0[arg3] once before the effect-type if/else chain and remove the repeated branch-local assignments. Pass entry->unkA << 2 directly to the water-effect helper.

-> `correct ASM`: F0A1C loads lbu a3,8(v1) before coordinate conversions; F0A44 stores zero at sp+0x14 and the call delay slot stores zero at sp+0x10; F0B28 uses beqzl with the ra restore in its delay slot. Full US ROM checksum: OK.
