Incorrect ASM

In `func_800F63D0_105380`, a pointer to the selected palette row interleaved the first three byte loads with halfword stores. The later five color homes were also two bytes above their target offsets.

Code changed

Keep the palette pointer at the constant table base and index each color with `currentLevel * 9 + offset`. Move the existing byte alpha local between `sp110` and `sp10C`, filling the preceding alignment gap.

Correct ASM

The initial three `lbu` instructions now precede the first color `sh` and clamp `lh`, and the first clamp uses the target `bgezl` ordering. The later named halfword homes become `0x10c`, `0x10a`, `0x108`, `0x106`, and `0x104` in the unchanged `0x168` frame. The function remains NON_MATCHING: later color forwarding, geometry scheduling, and register differences remain.
