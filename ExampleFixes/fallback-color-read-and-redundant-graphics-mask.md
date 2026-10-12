# Fallback color reads and a redundant graphics mask

Matched `func_800C5D14_D4CC4` with IDO 5.3 `-O2 -mips2 -32`; the function diff is zero and the complete ROM reports `build/bh.us.z64: OK`.

The target tests the first root color with `lbu v0`, then assigns the byte draw color with `andi t2,v0,0xff` in the branch delay slot. Reading that color into the draw-color local before the condition removes the mask, changes the branch to likely, and rotates all three color registers. Test all three root colors directly and copy red, green, blue only in the fallback `else`. The random-color branch overwrites all three, so an earlier copy is unnecessary. This reduced the diff from 649 to 137.

`gSPLineW3D` already masks its width to eight bits. Passing `entry->unk2 & 0xFF` adds no instructions, but creates an extra intermediate and shifts the width and subsequent temporary registers by one. Passing `entry->unk2` directly reproduces the target registers (137 to 12).

Remove the explicit effect-root pointer and use `D_80154088[arg0]` directly. IDO still caches the root address across the random calls, but spills it at `sp+0x3C` instead of `sp+0x38`, without changing the `0x68` frame or other local offsets (12 to zero). Do not replace the removed pointer declaration with an unused word: that preserves the wrong spill slot.

The existing `TrailParticleState` provides unsigned root color fields. Segment velocities use the signed fields of `ribbonState`; the two unused word homes can be represented by `s32 padding[2]`. Preserve the short-to-float-to-short conversions when writing vertices: the original instructions include the conversions and truncations.
