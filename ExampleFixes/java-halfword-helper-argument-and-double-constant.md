`incorrect ASM`: `func_802D5590_1EE2A0` converted the signed-halfword explosion result to a word at the debris-helper call, then narrowed it back to the helper's signed-halfword parameter. IDO emitted a second `sll`/`sra`/`move` sequence inside the loop preheader and shifted all subsequent temporary-register assignments. Loading the divisor through an externally defined constant also scheduled the floating constants differently.

`code changed`: Pass the signed-halfword local directly to `func_800C7924_D68D4`, without the `(s32)` cast. Initialize the double divisor from `1000.0`, allowing the compiler to emit its own constant at the original late-rodata location; move the remaining placeholder rodata to the following assembly stub.

`correct ASM`: The result is sign-extended once directly into `s6`; the loop preheader starts with the target `lui at,0x3fd0`, the 1000.0 load occupies its target position, and the entire US ROM checksum matches.
