# Replacing expanded graphics load macros

Use the definitions in `include/2.0I/PR/gbi.h`, the header selected by the build. A texture block load expands to SetTextureImage, SetTile, LoadSync, LoadBlock, PipeSync, SetTile, and SetTileSize, in that order.

Check every argument before replacing the sequence:

- The image and load tile use the size's LOAD_BLOCK value: 4-bit and 8-bit textures load as 16-bit. The render tile uses the actual texture size.
- SetTileSize coordinates are fixed point. For a block beginning at zero, width and height are `(lrs >> 2) + 1` and `(lrt >> 2) + 1`.
- A 4-bit load uses `(width * height + 3) >> 2` load units and `CALC_DXT_4b(width)`. Its render line is `((width >> 1) + 7) >> 3`.
- A 32-bit texture's render line uses two bytes per texel, while its DXT calculation uses four.
- Use gDPLoadMultiBlock when the TMEM address or render tile differs from the default; use the S variant only when DXT is zero.
- Both tile descriptors must have the same wrapping, masks, and shifts for the standard block macros to apply.
- Palette helpers include TileSync and the final PipeSync. A PipeSync shared after a palette-selection branch can be included in each branch's helper instead.

gDPLoadBlock already clamps the load count. Explicit equivalent count-clamping and DXT temporaries can be removed when using the texture helper.

Leave custom sequences expanded when they omit synchronization, load through a different tile, use a different image width, or have line/size fields inconsistent with the helper. Do not correct those fields as part of a macro refactor.

In this refactor, 128 load groups across 16 C files were replaced, including runtime dimensions and tile subregions. The standard matching build still reported `build/bh.us.z64: OK`. NON_MATCHING wrappers were retained; changes inside those wrappers were checked against the macro definitions rather than claimed to match the target assembly.

## Other composite graphics macros

A subsequent pass replaced 40 more groups: seven gSPClipRatio, eighteen gSPLightColor, seven gSPLookAt, five gSPSetLights1, two gSPSetLights2, and one gSPTextureRectangle. The matching ROM build remained OK.

- gSPClipRatio takes a token such as FRUSTRATIO_4, because it concatenates that token with FR_NEG_ and FR_POS_.
- gSPLightColor similarly takes LIGHT_1 or LIGHT_2 rather than a numeric light index.
- gSPLookAt expects two consecutive 16-byte Light entries. Recover LookAt fields in structs instead of retaining offsets into padding.
- gSPSetLightsN expects an 8-byte Ambient followed by N 16-byte Light entries. Adjacent standalone data definitions can be combined into LightsN without changing their bytes. Preserve aliases in undefined_syms.us.txt for removed member symbols still referenced by NON_MATCHING assembly.
- For an existing blob containing lighting and trailing data, a union of its original byte array and LightsN provides typed access without changing the initializer or storage size.

The remaining LookAtX/LookAtY pair in outside/884C0 uses addresses 0x8013BD40 and 0x8013BD38, respectively. This is not the layout expected by gSPLookAt; leave it unchanged. The frontend light-loading loop also uses a runtime count and 16-byte array slots, so it cannot directly use the fixed-count LightsN helpers.

With F3DEX_GBI, gSP2Triangles emits one G_TRI2 command; two gSP1Triangle calls emit two commands. Combining them would change the ROM and display-list layout rather than simply wrapping the existing commands.
