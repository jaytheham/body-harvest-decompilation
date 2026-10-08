# Direct instance accesses and pointer spills

In `func_802E16A8_3257F8`, named instance and parent pointers reserved eight
unused bytes in the frame even though IDO also spilled their values at the
required offsets. Moving their declarations changed local placement but left
the frame at 0x58 instead of 0x50.

Replacing the named pointers with repeated `alienInstances[index]` accesses
let IDO reuse the same addresses and spill them at 0x2C and 0x28 without the
extra local slots. Together with a two-element `s16` animation parameter
array, this produced an exact match.

## Same family: a named copy of a parameter charges a frame slot

`func_8007F188_4F638` (`overlay_gameplay/frontend/40720.c`) measured 3676
unwrapped with a uniform +8 on the frame (0x60; still 0x58 after the
declaration list was trimmed) and **every** local offset moved by the same 8
bytes - one extra homed local, not a layout disagreement.

The extra home was the flag local `s32 var_v1;` assigned from the parameter:
`var_v1 = arg6;` then `if (var_v1 == 0) { var_v1 = 0; }`. Testing the
parameter directly removed the home, restored the ROM frame (0x50) and every
local offset, and produced the ROM flag sequence (`bnez v1` with
`or v1,zero,zero` in the delay slot). Score 0, gate OK.

Before permuting declaration order on a uniform +N frame shift, try dropping
the local that only copies a parameter and using the parameter itself.
