`incorrect ASM`: In `func_801238DC_13288C`, local `Projectile *entry` and `s16 linkIndex` reserve a 0x40-byte frame instead of the target 0x38-byte frame.

-> `code changed`: Keep only the weapon pointer and word weapon index locals; use `D_8015EB90[arg0]` and its `unk2A` field directly. Remove the switch placeholder table and move subsequent unmatched constants/table into supplemental `.late_rodata` attached to the next assembly-backed function, with separate US/EU table pointers.

-> `correct ASM`: The frame is 0x38, weapon pointer/index spills remain at sp+0x24/sp+0x30, and the generated dispatcher table occupies 0x80145110. Both US and EU complete ROM checksums pass.
