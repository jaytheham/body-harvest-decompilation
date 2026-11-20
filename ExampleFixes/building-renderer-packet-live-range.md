`incorrect ASM` The building renderer colors the display-list packet load into `s0` because the optimizer groups packet work with call-ending blocks. The setup starts with `lw s0,0(s2)`.

-> `code changed` Preserve an empty scheduling boundary after lighting clear in the special-building and door blocks and after the door matrix, combine, model and primitive-color packets. The diagnostic replay gives the packet load a caller-save cost of zero.

-> `correct ASM` The setup and door packet loads use `lw v0,0(s2)` with `s2` still addressing the global cursor. IDO can assign `s0` to the door property pointer.

`incorrect ASM` Compiling the renderer moves its jump table behind the following explicit constants. Moving only the functions to a second translation unit introduces 16 additional bytes of writable-data padding.

-> `code changed` In the layout trial, split at `func_8011A2A0_129250` and move the explicit writable declarations with the later functions so that IDO emits them in the same section as the implicit initializers. Keep the constant prefix with the renderer and the subsequent constants with the later functions.

-> `correct ASM` The generated table occupies US ROM `0x153EF0` and PAL ROM `0x154A50`. An exact-length trial differed only within the renderer and its seven table entries in each complete linked ROM.

`incorrect ASM` IDO hoists both `0.0f` door comparisons into `f22`, adds an `sdc1` and `ldc1` in the save and restore sequences, and increases the frame from `0x1D8` to `0x1E0`.

-> `code changed` Give the existing four-byte door scratch union a floating-point member. At both comparisons, write zero to its integer member and read its float member after the earlier door registration call has finished using the scratch byte.

-> `correct ASM` The compiler materializes floating-point zero in caller-save registers, saves only `f20` in the prologue, and emits the original `0x1D8` frame.

`incorrect ASM` An independent door countdown leaves the renderer's countdowns in other saved registers. Sharing its variable can recover `s5` while rotating the graphics cursor and transform registers.

-> `code changed` Reuse the existing countdown in the door loop, give the mirror bit an explicit stack lifetime, keep the empty countdown tests before the offset setup and door-kind check, and keep the empty animation-key test before the secondary display-list check.

-> `correct ASM` All six `addiu s5,s5,-1` instructions and the 50 `lw v0,0(s2)` cursor loads coexist with the door flags in `s4`, transform addresses in `s6` and `s7`, and the building pointer in `fp`.

`incorrect ASM` Two locals hold the same byte-sized building index. The first store does not use the original byte home at `sp+0x19F`.

-> `code changed` Keep a single `u8` index at the earlier declaration and let IDO handle its lifetime across the drawing calls.

-> `correct ASM` The first pointer-difference result stores its low byte with `sb s1,0x19f(sp)`. The frame and all six countdown and 50 graphics cursor instructions retain their original register assignments.


`incorrect ASM` The instruction at US ROM `0x1285C4` loads the second door rotation input with `lwc1 f6,%lo(D_8015EA2C)(at)`. The conversion, multiply, truncation, and register transfer also use different floating-point registers.

-> `code changed` Remove the empty conditional at the start of door case 1 and the empty conditional before the final damage check. Neither is needed for the surrounding control flow.

-> `correct ASM` The load uses `f10`, the multiply uses `mul.d f18,f16,f20`, and the five instructions starting at `0x1285C4` match byte for byte.

`incorrect ASM` At US ROM `0x128BF0` the matrix pop emits the opcode store `sw t9,0(v0)`.

-> `code changed` Store the matrix mode on its own line before the opcode assignment in that packet.

-> `correct ASM` IDO places `sw zero,4(v0)` at `0x128BF0`, matching that instruction in the US and PAL renderer builds.
