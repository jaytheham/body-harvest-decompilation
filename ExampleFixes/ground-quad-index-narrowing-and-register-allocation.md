`incorrect ASM` In `func_800B604C_C4FFC`, the small rectangle loop emitted an extra tile-sync packet before `G_SETTILE`. The last rectangle path packed the first triangle as `(order + 1, order, order + 5)`.

-> `code changed` Emit `gDPSetTile` directly in the small rectangle loop. Keep `gDPTileSync` for the other three paths. Use `gSP2Triangles` with `(order, order + 5, order + 1)` for the first triangle in the last path.

-> `correct ASM` The small rectangle path advances one packet for `G_SETTILE` before emitting the triangles. The final path puts the upper-left, lower-left, and upper-right indices in bits 16, 8, and 0 of the first triangle word.

`incorrect ASM` Assigning `orders[y][x] + 4` directly to the word local coalesced the halfword load and the adjustment in one register and omitted a move in the small rectangle path.

-> `code changed` Narrow the adjusted index with `(s16)(orders[y][x] + 4)` when assigning it to the existing `s32` local.

-> `correct ASM` The small rectangle path emits `lhu a2`, `addiu t9,a2,4`, `move a2,t9`, and `sll v1,a2,1`. The fixed-size paths place the adjusted index in a temporary before shifting it.

`incorrect ASM` The row counter and its three offsets occupied the wrong saved registers. Correcting that group left the display-list constants `0x14000`, `0xB1000000`, and `0xE8000000` in `s4`, `s5`, and `s6`.

-> `code changed` Keep one row counter and use discarded comparisons on the tile row offset and both vertex byte offsets at the start of the small rectangle culling loop. In the small rectangle draw loop, compare `((u32)x << 16)` to the tile-sync command word before the tile lookup. Keep the halfword padding after the height.

-> `correct ASM` The row counter is in `s7`, and the tile row offset, copied vertex size, and vertex row offset are in `s4`, `s5`, and `s6`. The three display-list constants move to `s5`, `s6`, and `s4`. The comparisons emit zero instructions, and the `0x350` frame places the counts at `sp+0x12C` and the mode byte at `sp+0x123`.
