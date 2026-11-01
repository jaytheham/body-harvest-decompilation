# Java progress switch late-rodata order

Incorrect ASM: the existing C candidate for `func_802D7980_1F0690` recorded a jump-table load at offset `0xE90` instead of the target `lw t6,0xF20(at)`. Its executable switch body already matched; the late-rodata placeholders were emitted at the wrong point relative to compiler-generated tables.

Code changed: enable the existing C switch, remove its 14-entry jump-table placeholder from both lightning late-rodata files, and leave the lightning constants through `D_802E0F18_1F9C28` attached to the preceding lightning stub. Move the following 4000.0 and 188.0 constants into `1ED9E0_alien_late_rodata.s`, attached to the later alien-controller stub. This places the generated switch table between the two constant groups.

Correct ASM: the switch dispatch at `0x802D79A4` is `lw t6,0xF20(at)` and all switch instruction words match. The generated table occupies `0x802E0F20` through `0x802E0F57`; the following doubles retain `0x802E0F58` and `0x802E0F60`. The full US ROM verifies exactly.
