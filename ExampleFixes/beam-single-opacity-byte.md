`incorrect ASM`: In `func_800DC5B8_EB568`, separate `u8 strength` and `u8 alpha` variables produce different general-register allocation and extra value transfers around the initial opacity conversion and subsequent clamps.

-> `code changed`: Keep the initial opacity and all later opacity updates in the same `u8 strength` variable. Remove the `alpha = strength` handoff. Retain the unused byte declaration to preserve the adjacent byte and halfword stack offsets.

-> `correct ASM`: The initial `0xFF` and floating-point conversion result use `v1`, and the opacity calculation and clamp instructions match the target. This reduces the complete function from 375 differing bytes to 21; the remaining differences are elsewhere.
