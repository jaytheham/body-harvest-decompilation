`incorrect ASM`: In `func_800ED78C_FC73C`, IDO emitted `lw a0,0xB0(sp)` in the animation-frame branch delay slot at `0xFCBE8`. The pre-scheduling listing already put the vehicle reload before the waypoint read.

-> `code changed`: Read the waypoint X coordinate in a separate statement before computing the difference against the vehicle X coordinate. Reuse the existing integer temporary that is next assigned the vehicle Y coordinate.

-> `correct ASM`: At `0xFCBE8`, the branch delay slot emits `lui t4,0x8015`, followed by `lh t4,0x75E4(t4)` and `lw a0,0xB0(sp)`. All three words match the target.

`incorrect ASM`: The animation progress load at `0xFCC1C` and the X difference transfer at `0xFCC20` occurred in the opposite order.

-> `code changed`: Read `D_801575C4` before computing the X difference. Increment the saved value at the original progress update.

-> `correct ASM`: IDO emits `lwc1` at `0xFCC1C` followed by `mtc1` at `0xFCC20`. The registers still differ from the ROM.
