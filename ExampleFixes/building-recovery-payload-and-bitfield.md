# Building recovery: typed payload and packed flags

`func_800DAA1C_E99CC` matches with a `u8` building parameter, a signed-short
health limit, and a word-sized linked-list index. The health limit comes from
a signed byte shifted right by two; retaining its `s16` assignment reproduces
the target sign extension. A short list index introduced extra narrowing when
assigning the sentinel.

Expose the upper 20 bits of the building word at offset 8 as `statusFlags`.
`building->statusFlags &= ~0x10` generates the target shift, AND, XOR, shift,
XOR sequence while retaining the other packed bits. Existing byte and word
views remain available through the union.

Use a direct `while (index != -5 && index != -6)` traversal. In the matching
building branch, perform the age update or effect removal, then assign
`index = -5` once after that inner if/else. Separate assignments in each branch
made IDO reuse a saved sentinel with MOVE instead of emitting the target LI.
The nonmatching branch reads two successive links, as the target does.

Keep full-entry accesses directly indexed. A byte-array payload pointer caused
an extra pointer copy across the age branch. A typed
`EffectBuildingRecoveryState *` with a `s16` age temporary gives the separate
payload base in v1 and unsigned byte load into a0. A `u8` age temporary swapped
those registers and changed call scheduling. The pointer-only cast from the
payload array suffices; an intermediate integer cast is unnecessary.

Validation: function diff score 0 and full ROM `build/bh.us.z64: OK` after moving
the payload type into `include/structs.us.h` and cleaning the function.


### State and rotation halfword

Siberia func_802D77BC_2B9BEC uses BuildingInstance.stateAndRotation at offset 0xA. Store door1InteriorId first, then assign stateAndRotation = (stateAndRotation & 0xF03F) | 0x400. IDO schedules the halfword load before the door byte store and uses the target temporary registers. A named u16 copy instead puts the value in v0 and the building base in v1. Full ROM checksum verified OK.
