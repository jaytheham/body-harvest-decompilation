# Frontend model segment indices and entry lifetime

`func_8007FE8C_5033C` matches after correcting the segment macro arguments, moving the animation-entry lookup, and removing an unused display-list local.

- `gSPSegment` already multiplies the segment number by four. Passing `segment * 4` adds a second factor of four. Use the byte segment number directly. The target uses `lbu`, so declare the two segment-number globals as `u8` rather than casting signed bytes at each call.
- Assign `entry = &D_800D7B10[arg0->unk18]` immediately after copying the default scale, before filling the position and rotation locals. This allows IDO to interleave the lookup with the short field loads and reproduce the target registers and first call's delay slot.
- An unused `Gfx *dl` declaration still reserved space alongside the graphics macros' block-scoped temporaries. Removing it reduced the frame from `0x78` to `0x70` and shifted all four transform locals down eight bytes without changing instructions or registers.

Verification: `tools/make.ps1` produced `build/bh.us.z64: OK`, and the function diff scored zero.
