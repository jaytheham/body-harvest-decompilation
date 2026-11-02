`incorrect ASM` -> `code changed` -> `correct ASM`

In the still-unmatched `func_800F8B24_107AD4`, the count's automatic word cache uses `sw v0,0x60(sp)` and two later reloads from sp+0x60. The target uses sp+0x64 while retaining the same 0x148 frame and explicit vector homes.

-> Replace the existing x0 word local with `union { s32 coord; Gfx *gfx; } work`, using work.coord for its later coordinate lifetime. Use work.gfx for the first PipeSync packet instead of the SDK macro's additional private pointer home. Advance the global packet cursor, write `words.w1 = 0`, then write `words.w0 = _SHIFTL(G_RDPPIPESYNC, 24, 8)`. The packet pointer and coordinate lifetimes do not overlap. Writing w0 first reverses the two target packet stores.

-> The count store and both reloads use sp+0x64; the 0x148 frame and every explicit vector home stay unchanged. Packet stores match the target order, `sw zero,4(v1)` followed by `sw s3,0(v1)`. All assembly after the initial culling call matches. Enabled-function diff improves from 192 to 180; three early field loads remain out of order. The NON_MATCHING wrapper remains, and normal US/EU checksum builds pass with the target assembly selected.
