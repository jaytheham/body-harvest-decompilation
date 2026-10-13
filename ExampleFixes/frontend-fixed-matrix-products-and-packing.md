# Frontend fixed matrix products and packing

Matched `func_80080B80_51030` in `frontend/40720.c` with a full ROM checksum of OK.

The translation belongs at matrix offsets 0x30, 0x34, and 0x38, not the third rotation row at 0x20, 0x24, and 0x28. Declare the output parameter as a word pointer, consistent with its matrix-buffer callers, and move scratch-data declarations into `variables.us.h`.

Scale each row in two phases: multiply all three entries first, then shift all three right by eight. Interleaving multiplication and shifting or caching the products in extra locals causes IDO to forward stores, discard intermediate stores, and omit the target reloads.

Cache the four shared rotation products. A constant-zero condition using the last two products, immediately before the final matrix store, preserves their allocation without adding instructions. Putting empty tests at the end of the outer rotation block retains an unwanted branch; placing the condition before a real store lets it disappear. Keep the `+ 0` wrappers on the shared terms where needed to preserve commutative operand order.

Expose the existing 64-byte matrix scratch buffer through the `D_800DE070_words[16]` linker alias. This adds no data and prevents IDO from sharing the packing base with the earlier matrix base. Reuse the now-dead translation pointer as the output cursor.

Packing uses an unsigned high mask. Write the high-half expression as `(src[0] & mask) + ((src[1] & mask) >> 16)`. For the fractional half, use `(src[0] << 8 << 8) + (src[1] & 0xFFFFU)`: IDO combines the shifts but preserves the extra scratch-register step, producing the target's register sequence. A single shift by 16 generates identical operations with different registers.

Keep the packing setup on one source line in the order mask, output cursor, source cursor, do-loop header, first store. This reproduces the target address scheduling: end-address low addition, output-pointer load, source-address low addition. Other assignment orders or spreading the setup across lines reverse these instructions.

Descriptive local names, array access for cursor advancement, and removing redundant unsigned-short casts from the trigonometry calls all retained the full ROM match.
