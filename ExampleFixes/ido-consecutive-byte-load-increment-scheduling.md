# Word local replaces a byte mask with a move

In `func_8000A43C_B03C`, declaring the working register as `s32` rather than `u8` when assigning a byte value replaced `andi a0,v0,0xff` with the target `or a0,v0,zero` in the delay slot.
