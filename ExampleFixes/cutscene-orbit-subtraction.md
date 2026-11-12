`incorrect ASM`: In `func_800F066C_FF61C`, the orbit X subtraction at US offset `0xFFB18` emitted `subu t6,t8,s0` followed by `sh t6,0x7fc0(at)`.

-> `code changed`: Compute X as `entry->cameraX - (s32)(s64)targetX` and Y as `(s64)entry->cameraY - targetY`, keeping both halfword assignments and their stores in the same order.

-> `correct ASM`: The X subtraction uses `subu a0,t8,s0` and the store uses `sh a0,0x7fc0(at)`.
