# Direct instance accesses and pointer spills

In `func_802E16A8_3257F8`, named instance and parent pointers reserved eight
unused bytes in the frame even though IDO also spilled their values at the
required offsets. Moving their declarations changed local placement but left
the frame at 0x58 instead of 0x50.

Replacing the named pointers with repeated `alienInstances[index]` accesses
let IDO reuse the same addresses and spill them at 0x2C and 0x28 without the
extra local slots. Together with a two-element `s16` animation parameter
array, this produced an exact match.
