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

func_802D89F0_31CB40 reached score 8 after replacing the signed integer conversion and mask with a direct u16 cast of the double product. Removing the named instance pointer restored the remaining spill from 0x20 to 0x24 while retaining the 0x28 frame, giving a complete ROM match. Access the size through alienTypes[typeIndex].unkC.

The same change matched func_802D93D8_31D528: inline alienTypes[typeIndex].unk58 at both uses instead of keeping a named AlienType pointer. Replace its leading declaration with a padding word and remove a trailing padding word to retain typeIndex at 0x49 and the 0x50 frame; the shared pointer spill then moves from 0x20 to the target 0x24. Its func_8008EB20 call must use the three-argument outside-overlay declaration func_8008EB20_9DAD0 rather than the unrelated seven-argument frontend declaration at the same RAM address.
