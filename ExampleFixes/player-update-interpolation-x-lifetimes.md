`incorrect ASM`: In `func_800ED78C_FC73C`, reusing the normal movement float for the X interpolation delta assigns the later speed threshold to `f12/f13` and loads the deceleration constant into `f16`.

-> `code changed`: In both scripted vehicle transitions, use the dedicated `xDelta` local for the X delta and its scaled result. Use the existing `scratchFloat` local for the final X coordinate passed to `func_800FB44C_10A3FC`.

-> `correct ASM`: At ROM offsets `0xFD668` and `0xFD670`, IDO emits `mtc1 at,$f15` and `ldc1 $f14,0x44c8(at)` as in the ROM. The function's size stays fixed and the number of differing words falls from 643 to 624 in both versions.
