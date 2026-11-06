`incorrect ASM`: `func_8007EB1C_166BDC` was far from a match: its draft loaded the shadow texture through `G_IM_SIZ_8b` on tile 1 with a line of 2 and a TMEM offset of 0x050, and rounded `unk54` before it truncated `unk50`.

-> `code changed`: Load the texture the way the target does: `G_IM_SIZ_16b` for `gDPSetTextureImage` and for `gDPSetTile` on `G_TX_LOADTILE`, with line and TMEM 0, then `G_IM_SIZ_8b` with line 4 on `G_TX_RENDERTILE`. Compute `sp2C` before `sp2A`. The rest is register allocation: `new_var2 = 1` indexes `v.cn[new_var2]`, `new_var = 0` is passed to `gSPTexture`, the first render mode goes through `new_var3` after an empty `do { } while (0);`, and the last goes through a block-local `gfx` pointer. Removing any one of these breaks the match.

-> `correct ASM`: The function compiles to the target, and the US and EU ROMs both match.
