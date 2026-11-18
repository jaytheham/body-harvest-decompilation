`incorrect ASM` → For vertex 6 of `func_800F554C_1044FC`, IDO loads the vertex pointer before `mtc1` and inserts a `nop` between `mtc1` and `cvt.s.w`.

`code changed` → Group the initial lateral X and Z offsets in `Vec2_S16 side`. Keep the forward offsets in the `x` and `z` fields of a signed halfword vector through both radius calculations. Keep the later lateral offsets in separate scalar locals. The vertex Y expression stays the same.

`correct ASM` → At US ROM offset `0x104AD8`, the sequence is `lw t9,4(s0)` → `mtc1 t9,$f6` → `lw t8,0(v1)` → `cvt.s.w $f8,$f6`. The vertex pointer load fills the conversion delay slot.
