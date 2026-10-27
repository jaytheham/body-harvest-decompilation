`incorrect ASM`: Returning from every orientation-switch case leaves a `nop` in the outer condition's delay slot and emits a plain `bnez` for the saved-entry flag. The zero path loads `0x40` in that branch's delay slot.

-> `code changed`: End the orientation cases with `break`, and let both final entry paths reach one shared function exit. Keep the room-layout lookup as a typed `InteriorRoomData` array access and read the word music ID through its union member.

-> `correct ASM`: The saved-entry address `lui t8,0x8004` fills the outer branch delay slot. The inner test becomes `bnezl t8` with `li t6,1` in its delay slot; `li t9,0x40` and the room-pointer `lui` precede that test. All 254 instructions match and the full ROM checksum passes.
