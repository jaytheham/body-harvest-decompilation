`incorrect ASM`: In `func_800B9DB8_C8D68`, a Vec2_S16 map aggregate placed X/Z at sp+0x104/sp+0x106 instead of the target sp+0x10c/sp+0x10a. Simply replacing it with two scalar halfwords or moving both pointers below it grew the frame.

-> `code changed`: Use separate mapX and mapZ halfwords, keep tileSize as a halfword, declare startVertices before a padding halfword and the two coordinates, then declare gfx and the existing worldZ word before the vertex-pointer array. Move worldZ out of the inner declaration block.

-> `correct ASM`: The frame remains 0x118, mapX/mapZ occupy sp+0x10c/sp+0x10a, the vertex pointers occupy sp+0xf8/sp+0xfc, and visible/culled counts occupy sp+0xf4/sp+0xf2. This is a partial checkpoint: quotient copies, optimizer spills, and call setup remain unmatched, so the NON_MATCHING wrapper stays in place.

`incorrect ASM`: The two-element quotient array makes IDO copy both quotient results and store them in source-local homes. The separately assigned world Z value is computed before the texture row address and leaves an extra row-index copy.

-> `code changed`: Compute the signed tile quotients as scalar expressions and let assignment to the byte indices perform the narrowing. Replace the world Z local with a pointer to a 64-byte texture row in the same declaration slot. Pass the world Z expression directly to the frustum test.

-> `correct ASM`: The quotient divisions use the signed `bgez`/`sra` correction without quotient copies. The row setup spills the texture row at `sp+0x60`, the byte index at `sp+0x54`, and world Z at `sp+0x50`. Indexing the typed row matches the operand order of the address addition. The renderer retains its assembly fallback for the remaining differences.

`incorrect ASM`: The optimizer spills the X quotient at `sp+0x58` and the row counter at `sp+0x68`.

-> `code changed`: Write `row + mapZ / 4` and compute the X quotient before taking the texture-row address. Reuse the existing display-list cursor for both load-sync packets to remove the two macro-local pointer reservations.

-> `correct ASM`: The row counter spills at `sp+0x70` and the X and Z quotients at `sp+0x68` and `sp+0x6c`. The 0x118-byte frame and the addressed coordinate and vertex-pointer homes match.

`incorrect ASM`: The texture-offset expression reloads the Z index into `t9` and schedules the `a1` sign extension before the `a2` sign extension.

-> `code changed`: Mask the Z index to six bits before multiplying by `0x400`. Narrow the X/Z subtotal to `u16`, add the top offset, then narrow the sum again before adding the left edge.

-> `correct ASM`: The reload is `lw t6,0x54(sp)`, the X/Z subtotal uses `addu t6,t8,t7`, and the `a1` sign extension follows that subtotal. The full draw-call setup matches. The enabled renderer has 44 differing instruction words, so the assembly fallback remains active.
