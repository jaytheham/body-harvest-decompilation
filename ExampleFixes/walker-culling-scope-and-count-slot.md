`incorrect ASM`: In `func_800F8B24_107AD4`, the walker index and two coordinate loads precede the heading subtraction. Reading the index directly through the global array introduces an extra move from `v0` to `s0`.

-> `code changed`: Use a typed `cullWalker` from the named array inside its own block. Return early when culling rejects the walker and its limb type is outside the exception. On the accepted path, convert `cullWalker` through `u32` to initialize the rendering pointer before leaving the block.

-> `correct ASM`: The base is computed in `s0`. The culling instructions occur in the target order, with `subu t6,t5,t4`, the index load, the heading store, and then the descriptor and coordinate loads. The graphics loads keep their target order.

`incorrect ASM`: The scoped culling pointer leaves the limb count at `sp+0x60`. Reusing the packet scratch for the matrix pop moves it to `sp+0x64`, but rotates the four coordinate temporaries.

-> `code changed`: Write the matrix-pop packet through `work.gfx`, with its parameter word before its command word. Use `work.coord` for `entry->unk1E` and capture `entry->unkA` in the separate `x0` local.

-> `correct ASM`: The count store and both reloads use `sp+0x64`. The loads from `entry` at offsets `0xA`, `0x2`, `0xC`, and `0x1E` use `t0`, `t1`, `t2`, and `t3`, respectively.
