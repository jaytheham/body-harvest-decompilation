# Flare renderer: direct palette access

`func_800D2AB0_E1A60` matches all 263 instructions after removing its cached `u8 *color` local and using `D_8013E108_14D0B8.colors[arg7][channel]` in each vertex color write. Keep the existing short-to-float-to-short coordinate conversions: the target contains their CVT/TRUNC instructions.

Before this change, the function had a 0x38 frame versus target 0x30, delayed argument narrowing, different graphics pointer registers, and a diff score of 3425. Direct indexed palette access restored the 0x30 frame, the early A0/A3 SLL/SRA pairs, the graphics packet spills at 0x14/0x10/0x0C, and every instruction/register/order without padding or new temporaries. Full ROM comparison: OK.

This resembles the matched particle trail renderer: a named cached pointer can change both stack allocation and scheduling even when the optimizer could calculate the same array address. When the target uses a persistent address computed from a global array, try direct struct/array access before adding temporary pointers. Explicit identity casts on the short parameters or an extra scope around graphics setup worsened this function, so neither is part of the match.
