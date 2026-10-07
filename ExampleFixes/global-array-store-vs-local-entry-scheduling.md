# Global array stores can change load scheduling

In `func_800C9530_D84E0`, writing the radius through `entry->unk2`
produced the correct instructions but placed the halfword store before the
following color argument load. Writing `D_80154318[sp1A].unk2 = arg2`
preserved the same computed address and registers while allowing IDO to place
the color load before that store, matching the target.

Explicit radius/color temporaries and an integer cast of the entry pointer
did not produce that ordering. Try direct global array access when a local
entry pointer generates the right address but a nearby load is scheduled late.

The same function needed a leading unused `s32` local to place its saved
halfword index at stack offset 0x1A, as in the matched nearby allocator
`func_800D49CC_E397C`. Checking the already unsigned byte field directly
(`unkB == 0`) also avoided the register allocation change caused by an
unnecessary `& 0xFF`.

Validated with `tools/make.ps1`: full ROM checksum OK, function diff score 0.
