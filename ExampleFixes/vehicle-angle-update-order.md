Incorrect ASM (`func_80108B48_117AF8`): incrementing `unk22` between the roll velocity update and damping emits `lh t3,0x22(a0); addiu t4,t3,0x28` and schedules the angle stores in a different order.

-> Code changed: move `arg0->unk22 += 0x28;` after both angle updates, use `arg0->unkA = arg0->unkA + arg0->unk26;`, then cache the new `unk22` and `unk16` for the heading update. Refresh the cached `unk22` inside the float-update and upper-clamp branches.

-> Correct ASM: `lh t0,0x22(a0); addiu t1,t0,0x28; sh t1,0x22(a0)`, with the target roll/pitch load order, angle stores, and clamp reloads. All function instructions match and the full US ROM checksum passes.
