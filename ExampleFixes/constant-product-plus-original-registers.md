# Constant product plus original value

Matched `func_800E3738_F26E8` with IDO 5.3 -O2.

The target phase calculation multiplies the global timer by 25 using a shift/subtract sequence for 24, then adds the original timer. A named s32 timer local gives the target v0 load. Writing `timer * 25 + arg0` produced the correct instructions but reused t8 for the final timer addition, shifting subsequent temporary registers. Writing `timer * 24 + timer + arg0` produced the target t9 addition and matched all registers.

The color command words also require explicit `(arg1 & 0xFF)` in each branch, even though arg1 is u8. Omitting those expressions removes the target's second alpha mask. The two commands within a branch share that mask through CSE.
