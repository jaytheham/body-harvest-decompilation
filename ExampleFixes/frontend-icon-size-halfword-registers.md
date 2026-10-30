`incorrect ASM`: In `func_80071E80_42330`, multiplying the icon scales by `2.0f` replaced the first `mul.s` with `add.s`. Signed-halfword coordinate parameters also caused repeated `lh` loads and delayed texture-step divisions. Once those were corrected, word-sized `sizeX` and `sizeY` used `a0/a1` instead of the target `a2/a3` in six instructions.

-> `code changed`: Use signed-word coordinate parameters and copy them into signed-halfword position locals. Multiply both floating scales by integer `2`. Keep the two half-size locals as `s16`, convert the rectangle coordinates with `<< 2`, and retain the SDK graphics macros.

-> `correct ASM`: Both scales use the target `mul.s`, each position loads once with `lh`, and the half-size conversions and uses occupy `a2/a3`. IDO removes unnecessary halfword normalization because the rectangle fields retain only their low twelve bits. All function instructions match exactly, and both complete US and PAL ROMs pass their checksums.
