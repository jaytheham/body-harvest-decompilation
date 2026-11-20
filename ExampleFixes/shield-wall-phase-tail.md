## Incorrect ASM

With the draw packets and geometry mode already matching, the phase increment loads its halfword through a1 and rotates the three temporary registers in the final pipe-sync packet.

## Code changed

Read the phase directly in the assignment D_8013D510 = D_8013D510_14C4C0 + 1. The two symbols alias the same halfword in both ROMs. Keep the standard graphics macros for the two draw packets and the texture reset. This checkpoint uses a signed word for height, the existing color0 word for the active green channel, and *level in the loop's link-table lookup.

## Correct ASM

The increment uses lui t6,0x8014 and lh t6,-0x2af0(t6), then addiu t7,t6,1. The final pipe-sync uses t9 for the cursor increment and t8 for the packet opcode. The enabled checkpoint matches all 62 instructions from A5F78 through the return. The assembly earlier in the function still differs.
