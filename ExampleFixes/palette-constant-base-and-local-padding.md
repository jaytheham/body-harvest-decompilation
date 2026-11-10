Incorrect ASM

In `func_800F63D0_105380`, a pointer to the selected palette row interleaved the first three byte loads with halfword stores. The later five color homes were also two bytes above their target offsets.

Code changed

Keep the palette pointer at the constant table base and index each color with `currentLevel * 9 + offset`. Move the existing byte alpha local between `sp110` and `sp10C`, filling the preceding alignment gap.

Correct ASM

The initial three `lbu` instructions now precede the first color `sh` and clamp `lh`, and the first clamp uses the target `bgezl` ordering. The later named halfword homes become `0x10c`, `0x10a`, `0x108`, `0x106`, and `0x104` in the unchanged `0x168` frame. The function remains NON_MATCHING: later color forwarding, geometry scheduling, and register differences remain.

`incorrect ASM` → The green clamp uses `bgezl` and puts the clamped color store in its delay slot. IDO emits the vertex cursor's `addiu` after loading the first X coordinate.

→ `code changed` → Compute each green and blue adjustment in the existing signed word used later for the midpoint distances. Clamp that word to zero and assign it to the corresponding halfword. Assign the middle red channel directly to its byte local.

→ `correct ASM` → The green clamp uses `bgez v1` with `addiu a0,a0,-0x44CC` in its delay slot, and the first vertex pointer load now precedes the conversion of X. The linked diff score improves from 22109 to 21843 with the `0x168` frame intact. The function remains unmatched.
