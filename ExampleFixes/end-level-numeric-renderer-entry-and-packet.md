incorrect ASM: The numeric renderer began with `lbu v0; beqzl v0; lw ...` and omitted the target byte normalization.

-> code changed: Keep `if (*text != 0)`, then initialize the loop byte with `currentChar = text[charCount]` after setting the halfword count to zero. Use indexed text access in the later rendering loop.

-> correct ASM: `lbu t8,0(a0); li s0,0x31; beqz t8; andi v0,t8,0xFF`. The first 86 instructions through the palette-call setup match exactly when this C is enabled. The complete renderer remains NON_MATCHING.

incorrect ASM: The full texture-rectangle macro applied two extra vertical-coordinate masks at packet emission, although the bounds were already masked in both control-flow arms.

-> code changed: Retain the graphics macros for render state and the two `gImmp1` packet halves, but assemble the rectangle's first packet with the already-masked vertical bounds. Assign the lower bound before the upper bound in the settled-character arm.

-> correct ASM: The packet words combine the masked X values directly with the existing vertical values, with no extra `andi` instructions. The lower and upper values receive target registers `a3` and `t0`.

incorrect ASM: The color scratch and count occupied `sp+0x16C` and `sp+0x170`, four bytes above the target.

-> code changed: Replace the obsolete animation-counter pointer local with a declaration gap before the byte/count locals; keep the counter function-private when compiling this C.

-> correct ASM: The existing `0x1B0` frame places the color scratch at `sp+0x168`, count at `sp+0x16C`, and retained sway at `sp+0x180`.
