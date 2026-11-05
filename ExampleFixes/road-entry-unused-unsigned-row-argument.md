`incorrect ASM`: Each `func_800B604C_C4FFC` road-entry call computes the masked row in V0, copies it with `MOVE A2,V0`, and stores V0 at SP+10. The target shares A2 directly between the third register argument and fifth stack argument.

-> `code changed`: Declare and define the unused third parameter of `func_800B5EE4_C4E94` as `u32` instead of `s32`. All four callers pass `(u8)y`; the fifth parameter is already `u8`. The third value is never read by the helper, so its signedness is inferred from the caller's shared unsigned mask rather than an observed callee operation. Preserve the existing 32-bit ABI and the sixth parameter.

-> `correct ASM`: Each call uses `ANDI A2,row,0xFF; SW A2,0x10(SP)` without a copy. The helper remains byte-for-byte matched. The renderer reaches the exact 1340-instruction length and 0x350-byte frame, improving from 19768 to 18908; all ROM differences are inside C4FFC. The renderer remains NON_MATCHING because other differences remain.
