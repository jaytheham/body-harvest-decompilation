# Player update height and position lifetimes (partial)

Incorrect ASM: the exit-height calculation added `SLL/SRA`, a word spill and reload, and two extra conversion stalls. The vehicle flags also acquired an unnecessary `MOVE` before the airborne tests.

Code changed: assign the calculated vehicle height directly to the existing `s16 sp92` instead of first narrowing a reused `s32`. Convert vehicle X into `positionX` before calculating height, and reuse that float for the final interpolated X after the three offset calculations. Read `arg0->unk20` directly in the mutually exclusive airborne and bridge tests rather than copying it into a separate local.

Correct ASM: the extra height narrowing/spill instructions and vehicle-flag copy disappear. Together with a case-local signed heading, direct animation-sequence comparisons, and direct scripted-state guards, native function size improves from `0x1940` at the earlier native checkpoint to `0x1928`, versus target `0x1924`. The function remains `NON_MATCHING`: float and integer allocation, scheduling, and one net extra instruction are unresolved. The assembly fallback is retained.
