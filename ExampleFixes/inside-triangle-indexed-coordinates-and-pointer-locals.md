`incorrect ASM`: `func_80087CB8_16FD78` converted and stored each coordinate separately, assigned the effect pointer/index to `s1`/`s0`, and used a 0x78-byte frame instead of 0x70.

-> `code changed`: Read all three coordinates and the next link through `D_800FB7B0[next]`. Keep the root payload as a typed pointer, pass its color field directly, and remove the separate effect and color pointer locals. Declare the `Vec3f` after the retained pointer/index locals. Declare the parameter as `u8` and remove the redundant caller mask.

-> `correct ASM`: The three halfword loads precede their conversions, the effect pointer/index occupy `s0`/`s1`, the vector starts at `sp+0x58`, and the frame is 0x70 bytes. All instructions and the complete ROM match.
