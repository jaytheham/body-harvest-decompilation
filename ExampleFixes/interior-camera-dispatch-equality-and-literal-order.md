`incorrect ASM`

In `func_8007FC74_167D34`, equality emitted `c.eq.s $f0,$f2` and `c.eq.s $f12,$f4`; generated jump-table/literal loads used offsets `0x4F58`/`0x4F70` instead of `0x4F08`/`0x4F20`.

-> `code changed`

Write the camera-coordinate globals first in both equalities. Remove the dispatch jump-table and `180.0` placeholders, retaining the inline literal; move the remaining functions' constants into supplemental `.late_rodata` attached to the next unmatched function. Keep separate US/EU table-address versions.

-> `correct ASM`

`c.eq.s $f2,$f0`, `c.eq.s $f4,$f12`, `lw t8,0x4F08(at)`, and `ldc1 $f18,0x4F20(at)`. Function diff score is zero and the complete US ROM checksum passes.
