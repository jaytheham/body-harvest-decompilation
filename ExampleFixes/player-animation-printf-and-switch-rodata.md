incorrect ASM: func_800EB534_FA4E4 saved a1 rather than a3 at 0x3c(sp), and its generated switch table loaded from 0x44a8 rather than 0x4420.

-> code changed: Pass arg1 to osSyncPrintf for the START ANIM %d format. Remove the placeholder jump table and place the following unmatched constants in supplemental .late_rodata attached to their existing assembly stub. Keep the adjacent matched double as an extern ShadowGeometryConstant. Use a separate EU supplement for the +0x30 overlay jump destinations.

-> correct ASM: sw a3,0x3c(sp) and lw t7,0x4420(at), with all function instructions matching. Native US ROM checksum OK and function diff score zero.
