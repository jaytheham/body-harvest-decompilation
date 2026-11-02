`incorrect ASM`: In `func_800B9DB8_C8D68`, a Vec2_S16 map aggregate placed X/Z at sp+0x104/sp+0x106 instead of the target sp+0x10c/sp+0x10a. Simply replacing it with two scalar halfwords or moving both pointers below it grew the frame.

-> `code changed`: Use separate mapX and mapZ halfwords, keep tileSize as a halfword, declare startVertices before a padding halfword and the two coordinates, then declare gfx and the existing worldZ word before the vertex-pointer array. Move worldZ out of the inner declaration block.

-> `correct ASM`: The frame remains 0x118, mapX/mapZ occupy sp+0x10c/sp+0x10a, the vertex pointers occupy sp+0xf8/sp+0xfc, and visible/culled counts occupy sp+0xf4/sp+0xf2. This is a partial checkpoint: quotient copies, optimizer spills, and call setup remain unmatched, so the NON_MATCHING wrapper stays in place.
