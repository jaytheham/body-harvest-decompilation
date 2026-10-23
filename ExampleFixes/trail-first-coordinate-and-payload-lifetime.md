incorrect ASM: In `func_800D6290_E5240`, reading the first X through `state->position[0]` emitted `addiu s2,v0,8` before the sentinel branch and `lh t9,0(s2)` afterward. Reading X directly through the parent without another payload use let IDO delay the address until after the random call, retaining the parent in S1 and changing the cached base, stride, and sentinel registers.

code changed: Keep the existing payload assignment before the next-link test. Read the first X as `D_80154318[index].trailParticle.position[0]` and put `if (state) {}` immediately after that assignment on the same physical source line. The empty test emits no instructions but retains the payload address before the random call.

correct ASM: `lh s4,4(v0); beql s4,a0,...; sll v1,s4,16; lh t9,8(v0); lw t6,0(s0); addiu s2,v0,8; jal func_800038E0_44E0; sh t9,0(t6)`. The parent dies before JAL, while S2 carries the payload through it. All 509 instructions and the complete US and EU ROMs match.
