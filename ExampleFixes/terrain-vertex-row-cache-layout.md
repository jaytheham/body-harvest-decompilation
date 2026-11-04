# Terrain vertex row cache (partial)

`func_800B5090_C4040` remains NON_MATCHING.

## Incorrect ASM

The initial C produced a 0x100-byte frame instead of 0xD8. RGB and position locals had displaced homes, the vertical neighbor calculations repeatedly reloaded the byte row index, and the jitter field used LB instead of the target LBU.

## Code changed

Move the six byte locals ahead of wider declarations, retain RGB as an ascending three-byte array, inline one-use floating ratios and the world-X expression, reuse the material amplitude local for the earlier terrain classification, and keep a signed word row-index copy only for vertical neighbors and the row increment. Preserve byte accesses for wrapped horizontal neighbors. Declare the jitter symbol as u8: its target read is LBU and its writes assign zero or a masked value from 0 through 7.

## Correct ASM

The frame becomes 0xD8; RGB homes become SP+B4/B5/B6, positions SP+AA/A8, scroll Y SP+A0, row and shade pointers SP+90/7C, and the signed row-index copy SP+80. The jitter read becomes LBU. The comparison score improves from 16780 to 13003; instruction ordering and register differences remain.


`incorrect ASM`: The current-tile address was delayed until the RGB branch, the cached timer address occupied S6 ahead of scroll X and the output cursor, and the function contained eight extra instructions.

-> `code changed`: Capture each initial ring/map byte together with its corresponding global store. Immediately after `tileCenter = &ringRow[col]`, retain the discarded pointer observation `if (tileCenter) {}` before assigning the current Y coordinate.

-> `correct ASM`: The tile address is computed before wrapped-neighbor selection. Scroll X uses S6, the output cursor S7, and the timer address S8 as in the target. The frame remains D8 and only two extra instructions remain; the comparison improves from 13003 to 10021. A field-read observation emits an unwanted branch and must not be substituted for the pointer observation.

`incorrect ASM`: Enabling the terrain switch placed its generated jump table after the three file-scope crater float constants, shifting both the table and those constants from their required positions. Moving the global definitions below the function did not alter the emitted order.

-> `code changed`: Replace the crater references to the global 1.022, 0.7f, and 3.2f constants with their inline literals. Keep the manual switch table only in the NON_MATCHING fallback branch, so enabling C removes it with the assembly stub.

-> `correct ASM`: The generated switch table precedes the later crater literals. All three already-matched crater functions retain their bytes; the complete native US fallback ROM checksum passes.
