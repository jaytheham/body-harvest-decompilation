`incorrect ASM`: In `func_8007A8AC_16296C`, a cached room-entry pointer advances the stack adjustment and saves into the initial address calculation. A named effect-entry pointer spills at sp+0x28 instead of sp+0x2C. Flattened level/event indexing gives different temporary registers through the end of the function.

-> `code changed`: Use direct indexed room and effect-entry accesses. Keep the object index named and one unused word before the changed flag. Assign each event ID inside the state-bit guard, before the visited-room test or update. Declare the display-list table as `[6][11]` and index it by level and event. Test state bit 0 explicitly.

-> `correct ASM`: The initial room address and object load precede the sp-0x40 adjustment; ra and a0 saves follow the catalog stride calculation. The effect-entry pointer spills at sp+0x2C, both event IDs spill at sp+0x3C, and the level stride stays in t4 through its final shift. The entire function and full US ROM checksum match.
