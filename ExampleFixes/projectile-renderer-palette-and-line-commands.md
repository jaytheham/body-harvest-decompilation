`incorrect ASM`: In `func_80124D60_133D10`, a separately cached trail index assigns the first three color loads to `a0/a1/a3` and rotates scratch registers through the vertex stores. The line pass emits an extra line command after writing its four vertices.

-> `code changed`: Index the byte palette directly with `bullet->unk20 * 0xB - 0x54 * 0xB + channel`, reading the initial RGB, trail RGB, trail alpha, and end alpha separately. Keep the channel locals unsigned bytes. Emit two `gSPLineW3D` packets after uploading the vertices, with `(2, 3, 0xD, 0)` and `(0, 1, 4, 0)`.

-> `correct ASM`: The channel loads begin in `v1/a0/a1`, with offsets `-0x39c/-0x39b/-0x39a`. Both clamp groups and all four vertex writes use the target registers. The line packets end in `0x0004060D` and `0x00000204`, and the entire trail branch matches.
