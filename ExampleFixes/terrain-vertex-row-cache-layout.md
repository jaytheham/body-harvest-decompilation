# Terrain vertex row cache (partial)

`func_800B5090_C4040` remains NON_MATCHING.

## Incorrect ASM

The initial C produced a 0x100-byte frame instead of 0xD8. RGB and position locals had displaced homes, the vertical neighbor calculations repeatedly reloaded the byte row index, and the jitter field used LB instead of the target LBU.

## Code changed

Move the six byte locals ahead of wider declarations, retain RGB as an ascending three-byte array, inline one-use floating ratios and the world-X expression, reuse the material amplitude local for the earlier terrain classification, and keep a signed word row-index copy only for vertical neighbors and the row increment. Preserve byte accesses for wrapped horizontal neighbors. Declare the jitter symbol as u8: its target read is LBU and its writes assign zero or a masked value from 0 through 7.

## Correct ASM

The frame becomes 0xD8; RGB homes become SP+B4/B5/B6, positions SP+AA/A8, scroll Y SP+A0, row and shade pointers SP+90/7C, and the signed row-index copy SP+80. The jitter read becomes LBU. The comparison score improves from 16780 to 13003; instruction ordering and register differences remain.
