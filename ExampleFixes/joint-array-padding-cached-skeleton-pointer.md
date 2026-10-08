### Joint array and cached skeleton pointer

In func_802E21C4_326314, declarations `s16 joint[1]; s32 pad; Unk8014DD50 *part;` reproduce the target 0x30-byte frame, joint at 0x2C and pointer at 0x24. Keep the unused padding between the live locals. A scalar joint reserves different space and enlarges the frame.

Read the joint through D_8014DD5C[index].unk0 (signed byte) and the angle through unk6Unsigned (unsigned halfword). Assign the skeleton pointer inside the subtraction after the random-angle call, then reuse it for the second call. An additional word-sized angle local enlarges the frame.
