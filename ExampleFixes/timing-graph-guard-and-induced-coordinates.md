# Timing graph: explicit count guard, inline color term, and induced coordinates

`func_800A140C_B03BC` matches with these three source choices:

* Keep `i = 0x20; if (i) { while (i--) { ... } }` for the drawing loop. The explicit guard preserves the original redundant constant-entry branch and keeps the row counter in s0. A plain while loop removes that branch and changes the saved registers. The later clearing loop remains an ordinary `i = 0x20; while (i--)`.
* Name the green and blue terms, but inline the red ternary in the final sum: `color = ((i & 4) ? 0x7800 : 0) + blue + green;`. Naming the third term changed temporary registers throughout the function. Inlining it restored every register and instruction except the coordinate initializers, reducing the difference to score 270.
* Inside each row, assign `lry = i * 6 + 0x19; uly = i * 6 + 0x15;` before the rectangle macro. IDO strength-reduces these to initial constants 0xD3/0xCF and two decrements by 6. Those derived initializers belong after the entry guard. Explicitly initializing the coordinates before the loop and decrementing them in the body hoists their initial loads before the guard, even when those assignments are moved inside the guard or folded onto the loop-header line.

Keep both named s32 coordinate locals. Inlining the two expressions directly into `gDPFillRectangle` matches the instructions and registers but shrinks the frame from the target 0x58 to 0x50 (score 10). The named assignments restore the exact frame without padding.

The timing accumulator is u64, shifted with `sum >>= D_80047722` and capped at 200. Keep `sum + 0x20` as the rectangle width expression; narrowing sum before the addition removes the target's leftover unsigned carry comparison. The full function and ROM checksum verify exactly.
