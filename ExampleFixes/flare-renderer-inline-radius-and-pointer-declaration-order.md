`incorrect ASM`: In `func_800CFD84_DED34`, caching the entry radius in an `s16` local produces a `0x118` frame instead of `0x110`. Removing that local alone moves the position, rotation, and scale vector homes away from the target offsets.

-> `code changed`: Read `D_80154318[curr].unk2` directly in the absolute-value expressions. Retain the flare and texture-offset locals, but declare `AnimatedFlareState *flare` after the three vectors.

-> `correct ASM`: The frame is `0x110`, and all 521 instructions, vector homes, and register assignments match. Retiring the renderer's constant placeholders and moving the trailing placeholders into the existing smoke fallback's late rodata restores the literal addresses to `0x80144010` and `0x80144014`. Both complete US and EU ROM checksums pass.
