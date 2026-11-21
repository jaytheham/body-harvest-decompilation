`incorrect ASM`: In `func_80074FF0_15D0B0`, a direct `(u16)(s32)` conversion of the scaled camera heading emits `li t5,0x238E; sw t5,0x20(sp)` before the first camera coordinate store. The temporary registers then stay rotated through the draw paths.

-> `code changed`: Shift the converted heading left by sixteen through an unsigned word, shift it back through a signed word, and convert the result to `u16`. Put the display-list pointer before the transform arrays.

-> `correct ASM`: IDO still narrows the heading with `andi`, but the outgoing arguments now contain `sw t7,0x10(sp); li t7,0x238E; trunc.w.s f18,f16; sw t7,0x20(sp)`. The transform arrays start at `sp+0xD4`, `sp+0xB0`, and `sp+0x9C`.

`incorrect ASM`: Three separate lines for the secondary scale assignments leave `li t6,0x100; li t8,0x100` at ROM `0x15D3E0`.

-> `code changed`: Keep `scale[3] = 0x100; scale[4] = 0x100; scale[5] = 0x100;` on a single source line.

-> `correct ASM`: IDO emits `li t8,0x100; li t6,0x100` while retaining the stack stores.
