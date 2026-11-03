# Palette fade arithmetic and loop lifetimes (partial)

`func_800BED30_CDCE0` remains NON_MATCHING.

## Incorrect ASM

The starting C generated MUL.D/MUL.S by one half instead of DIV.D/DIV.S by two, omitted unsigned integer-to-float conversion branches for decoded bytes, replaced the blue unsigned conversion with a different signed clamp, and produced a 0x80-byte frame instead of 0x50.

## Code changed

Use integer literals `/ 2` as in the matched fade calculation in `func_800B345C_C240C`, preserve `(f32)(u32)` casts for decoded channels, and let unsigned byte assignment perform the full unsigned float conversion. Reuse the fade factor across phases. Use a for loop for the palette counter, update its input/output bytes in place, and keep separate temporary output bytes for the two later fog-color decodes. Pack the first fog color before decoding the second. Remove the one-use previous-timer local, and group byte declarations before wider locals.

## Correct ASM

The divisions become DIV, the decoded-channel unsigned conversion branches agree with target, and the for-loop form avoids three unwanted cached stack addresses in callee-saved registers. The frame becomes 0x50 with RGB at SP+4B/4A/49. The target and current functions both contain 1618 instructions. The comparison improves from 41641 to 3870, with only six opcode-order differences, all in the palette counter/packing block; temporary-register differences remain throughout.
