`incorrect ASM`: In `func_8000A3DC_AFDC`, a separate doubled halfword and integer byte temporaries assigned the low result to `a3` and the doubled value to `a2`, while the target uses `v0` and `v1`.

-> `code changed`: Double the existing `s16` parameter with `arg0 *= 2`. Initialize a `u8 low = arg0 & 0xFF` before an `s8 high = arg0 >> 8`, then increment each nonnegative byte and store high followed by low. Keep the unsigned low-byte guard, which IDO retains in the target.

-> `correct ASM`: `sll t9,a0,17; sra v1,t9,16`, followed by `sra a3,v1,8`, low-byte arithmetic in `v0`, and high-byte arithmetic in `a2`. Function diff score is zero and the complete US/EU ROM checksums pass.
