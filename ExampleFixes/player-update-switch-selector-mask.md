`incorrect ASM`: In `func_800ED78C_FC73C`, `switch (scripted)` loads the selector into `v1`. The bounds check reads `v1`, and the table index shifts from `v1` into `t2`.

-> `code changed`: Keep the `u16 scripted` local and use `switch (scripted & 0xFFFF)`.

-> `correct ASM`: At ROM offsets `0xFC7C0` through `0xFC7CC`, the selector load, bounds check, and shift all use `t2`, matching the target without an extra mask instruction.

`incorrect ASM`: With the scripted target heading on the left of the masked inequality, the later water-height load at `0xFD294` through `0xFD298` uses `t7`.

-> `code changed`: Put the masked vehicle heading on the left of the inequality and the masked target heading on the right.

-> `correct ASM`: The later load uses `lui t5,0x8022; lw t5,0x2A70(t5)` as in the ROM. This operand order reduces the total word mismatch count by 18 with the selector mask in place.
