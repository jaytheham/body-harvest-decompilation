# Byte color locals and explicit angle narrowing

`func_800FEDBC_10DD6C` initially had a stack frame eight bytes too large, while its scalar floating point locals already occupied the correct slots. Changing the three color locals from s32 to u8 packed their reserved stack storage and shifted the coordinate locals down eight bytes, reproducing the entire target frame without changing color instructions.

For the two trig calls, `(u16)(vehicle->unkE + 0x4000)` generates an add in a0, a mask in a temporary, and a move back to a0. Writing the equivalent expression with `& 0xFFFF` instead generates a shorter two-instruction sequence and changes later temporary registers. Both changes together produced a full ROM match.
