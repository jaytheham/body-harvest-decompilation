`incorrect ASM` → IDO emits `addiu v1,a0,0x24` followed by `lbu t9,0(v1)` for the red channel. The adjacent green and blue loads already use offsets `0x25` and `0x26` from `a0`.

`code changed` → In `func_800F554C_1044FC`, represent the 15 level palettes as `EffectRgb table[15][3]`. Set `EffectRgb (*levelColor)[3]` to `&table[currentLevel]` and read `levelColor[4][0].r`. This keeps the four-row displacement within the same array. The original initializer order is preserved.

`correct ASM` → The three `lbu` instructions use consecutive displacements `0x24`, `0x25`, and `0x26` from one register. The target uses `t2` for the register holding the palette base.

`incorrect ASM` → At US ROM offset `0x10465C`, the palette address was computed with `addu a0,t7,t8`. The palette loads through `0x104700` consequently used `a0`.

`code changed` → Move the address check for `colorA` before the radius load, leave the check for `colorC` before the clamps, and remove the empty green-channel check between the last palette load and the first vertex. In the IDO allocation trace, the palette address then overlaps the first vertex calculations.

`correct ASM` → The address uses `addu t2,t7,t8`. The next three loads are `lbu t9,0x24(t2)`, `lbu t6,0x25(t2)`, and `lbu t7,0x26(t2)`. Both linked ROMs match their first 127 instructions in this function.
