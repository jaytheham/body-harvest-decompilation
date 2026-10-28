Incorrect ASM:

In `func_802DDC44_321D94`, separate short locals passed as a contiguous joint buffer lost joint stores and traversal loads. With a real array, reading `temp_s3->unk36` still placed `sb v0,0x7b(sp)` before the state load and hoisted the first helper's `andi a0,s2,0xff` before the branch.

Code changed:

Use `s16 joints[14]` and `s32 point[3]` for the two contiguous buffers. Fill the joint array in index order except for `joints[2] = arg3`, which follows the remaining joint fills. Preserve the two root parameter lifetimes with the existing discarded conditions. Cache the three base coordinates in `s32` locals after the first joint-coordinate call, and use a `u8` loop counter with ordinary `i++`. Read the state with `alienInstances[arg0].unk36` instead of the cached instance pointer.

Correct ASM:

```asm
jal     func_80081F18_90EC8
sh      t6,0x96(sp)
lbu     t8,0x36(s3)
li      at,3
sb      v0,0x7b(sp)
bne     t8,at,.L802DDF04
li      t6,0x200
andi    a0,s2,0xff
```

The function diff is exact and the full US ROM checksum passes.
