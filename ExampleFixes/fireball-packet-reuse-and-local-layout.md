`incorrect ASM`: Enabling `func_800D8190_E7140` with separate macro packet locals reserves `0x120` bytes, places the direction vector at `sp+0x108` and the size halfword at `sp+0xF8`, and gives diff score 4849.

-> `code changed`: Place the opacity local after the short geometry locals. Reuse it for both opacity phases, restore the first `gDPPipeSync` macro, and share one `Gfx *gfx` for the remaining four standalone pipe-sync packets and four final single-triangle packets. Retain the SDK command constants and triangle encoding helper. Keep each packet assignment sequence on one preprocessor line using backslash-newline splices. Compute cached corner components in X/Z/Y order before storing them in X/Y/Z order. Use a signed halfword effect-list index; this type change preserves the compiled instructions.

-> `correct ASM`: The frame is `0x100`, the direction vector is at `sp+0xF0`, and the size halfword is at `sp+0xE0`, matching the target. The additional zero-code boundaries before the cached corners and after the first final triangle reduce the diff score to 4175. This is a partial frame/layout correction; alpha materialization, coordinate scheduling, and register allocation remain unmatched.

`incorrect ASM`: The four final triangles in `func_800D8190_E7140` share one materialization of `G_TRI1 << 24`. The first packet lacks the target's `lui t8,0xBF00` at ROM `0xE7E8C`, leaving the function one instruction short and shifting later linked data.

-> `code changed`: Place `if (1) {}` immediately after the first final triangle's second-word store, before assigning the shared packet cursor for the remaining three triangles. This preserves an optimizer block boundary without emitting a branch.

-> `correct ASM`: The first final triangle separately materializes its opcode with `lui t8,0xBF00` at `0xE7E8C`. The retained function has exactly 900 instructions and the same count of every opcode as the target. The frame remains `0x100`; register allocation and instruction scheduling remain unmatched.
