# Undefined switch fallthrough return frees the selector register

`func_8000807C_8C7C` in `src.us/core/53F0.c` follows linked three-byte mission commands inside a loop and returns comparisons from nested switches.

The unmatched implementation cached the outer selector in `s32 opcode` and ended the loop with `return opcode`. This kept the selector live across the inner switches, allocated it to v1 instead of v0, shifted the constant-register assignments, and introduced a branch plus `move v0,v1` on the default path.

Switch directly on `((volatile u8 *)arg0)[0]`, then break out of the loop after the switch and let the non-void function reach its end. The target leaves its result unspecified for unhandled commands. Retaining the volatile byte access preserves a selector reload each time either command follows a link. Existing typed `MissionCommand` array access reproduces the three-byte stride multiplication.

This removes the extra return-value live range and matches every instruction, including all temporary registers. Verified with `tools/make.ps1`: `build/bh.us.z64: OK`.
