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

Leave custom sequences expanded when they omit synchronization, load through a different tile, use a different image width, or have line/size fields inconsistent with the helper. Do not correct those fields as part of a macro refactor. Separate light symbols also cannot be passed directly to gSPSetLightsN, which expects a LightsN aggregate.

In this refactor, 128 load groups across 16 C files were replaced, including runtime dimensions and tile subregions. The standard matching build still reported `build/bh.us.z64: OK`. NON_MATCHING wrappers were retained; changes inside those wrappers were checked against the macro definitions rather than claimed to match the target assembly.
