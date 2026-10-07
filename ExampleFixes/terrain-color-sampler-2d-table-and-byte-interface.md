# Terrain color sampler: two-dimensional tables and byte parameters

Matched func_800B1814_C07C4 with IDO 5.3 -O2 -mips2 -32.

Declare the landscape color-index table as u8 D_80260700[128][128]. Access the four neighbors with ordinary row and column subscripts. Flattened index expressions and nested byte-address expressions gave nearly the same arithmetic but different common subexpressions and prologue scheduling. The two-dimensional declaration retains the target pair of row-base calculations and reproduces the delayed stack allocation and argument stores.

Declare the four-byte palette records as TerrainPaletteColor, with r, g, b and an unknown fourth byte, and access D_80264700[index].r/g/b directly. This replaces byte-pointer palette math and matches the interpolation code.

Keep the four sampled palette indices in a u16 corners[4] array, in declaration and assignment order: first row/first column, next row/first column, first row/next column, next row/next column. Scalar byte indices omit required halfword stores and reloads; scalar halfwords remain entirely in registers. The array gives the target homes at sp+0x10 through sp+0x16, with the two three-halfword interpolation arrays at sp+0x8 and sp+0x0. The u8 row and column locals precede those interpolation arrays.

The sampler has u8 coordinate parameters. Updating its prototype initially disrupted all four already matched scrolling helpers because their call arguments retained explicit 0xFF masks before implicit byte conversion. Remove those redundant masks from the calls; implicit parameter narrowing generates the target masks and restores all four exact matches. The final sampler, callers, loader, and complete ROM verify exactly.
