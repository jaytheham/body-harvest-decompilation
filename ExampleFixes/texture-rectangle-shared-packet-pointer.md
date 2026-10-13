# Texture rectangle packet pointer reuse fixes stack homes

`func_80005C5C_685C` matched every instruction and register with the standard
`gSPTextureRectangle` macro, but retained score 40 from eight stack references.
The tile width, tile height, and column count occupied `sp+0x84`, `sp+0x80`,
and `sp+0x8C`, rather than the target's `0x88`, `0x84`, and `0x90`. The
`0x158` frame and the higher cached-value homes already matched.

Expand the rectangle command and its `G_RDPHALF_1` command with one shared
block-scoped `Gfx *gfx`, advancing `D_8005BB2C++` separately for each packet.
Keep the final `G_RDPHALF_2` command as `gImmp1`. This removes one pointer
declaration from the SDK expansion without changing the command sequence.
All stack references then match, with the frame still `0x158`: score zero
and `build/bh.us.z64: OK`. Separate lines for the pointer assignments and
word stores also match; no source-line packing or unused padding is needed.

Adding a word of padding to the standard macro version corrected the lower
homes but shifted the higher homes and enlarged the frame. Reusing the pointer
for all three rectangle packets also failed to match. Check the complete
frame and diff rather than assuming each removed declaration has a uniform
effect on stack offsets.

For this tiled loop, an early rejection with
`right <= 0.0f || bottom <= 0.0f || 319.0f < left || 319.0f < top`
and `continue` recovered the floating-point register allocation. Assign
left, top, right, and bottom in that order, and retain a named image-offset
local before `gDPSetTextureImage`; inlining the offset changed integer
register allocation. The texture-T local remains inside the column loop.
