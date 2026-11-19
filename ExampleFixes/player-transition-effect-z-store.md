`incorrect ASM`: In `func_800ED78C_FC73C`, staging the effects' Z coordinate in the signed-short scratch local used `addiu t7,sp,0x78` at 0xFCE80 and `addiu t4,zero,0x34` at 0xFD328.

-> `code changed`: In both effect blocks, assign `effectPosition.z = arg0->unk4` directly before the three RGB assignments. Keep RGB in array order.

-> `correct ASM`: The sites use `addiu t6,sp,0x78` and `addiu t9,zero,0x34`. The subsequent argument stores use those same target registers. The function still has other allocation and scheduling differences.
