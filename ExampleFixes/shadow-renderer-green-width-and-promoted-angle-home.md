`incorrect ASM`: In the draft `func_800F554C_1044FC`, the shared unsigned-halfword trig argument is cached with `sw a0,0x50(sp)` and later `lw a0,0x50(sp)`. The target uses 0x54. The frame and explicitly addressed color locals already have the target offsets.

-> `code changed`: Narrow the initial green channel local `cG` from `s32` to `u16`. Its source is an unsigned palette byte, so all values are preserved. The smaller tail local changes the alignment of the compiler-generated argument-cache reservation without moving the addressed short color locals.

-> `correct ASM`: The trig argument uses `sw a0,0x54(sp)` and `lw a0,0x54(sp)` in the unchanged 0x138-byte frame. The function remains unmatched: the overall draft score is 4563 versus 4559 before this focused cache-home correction, with a small additional green-register difference. Its NON_MATCHING wrapper remains, and normal US and EU ROM checksums pass.
