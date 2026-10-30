`incorrect ASM`: In `func_800B960C_C85BC`, the five-entry generated switch table loads from `0x80142E7C` instead of `0x80142E50`; the explicit trailing crater constants precede the table. All arithmetic and control-flow instructions already match.

-> `code changed`: Remove the placeholder `jtbl_80142E50_151E00`. Preserve the following five doubles and one float in `.late_rodata`, aligned to eight bytes, attached to the next unchanged assembly stub (`func_800B9DB8_C8D68`) through `BF9C0_late_rodata.s`. Declare the preserved constants in `include/variables.us.h`. Moving ordinary C constant definitions below the switch does not change IDO's global-data-before-functions emission order.

-> `correct ASM`: `lw t4,0x2E50(at)` selects the generated table; the trailing constants retain addresses `0x80142E68` through `0x80142E90`. Function diff score is zero and the complete US ROM checksum passes.
