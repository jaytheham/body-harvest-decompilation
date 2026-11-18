`incorrect ASM` → In `func_800F554C_1044FC`, IDO loads the final blue channel with `lh t8,0x102(sp)`, spills it with `sw t8,0xf0(sp)`, and reloads it for a later vertex.

`code changed` → In an isolated build, keep the final green and blue channel copies in `u16 baseGreen` and `s16 baseBlue`. Give the repeated texture coordinates and vertex alpha their own narrow locals. Assign the blue copy from `colorC` while writing vertex 11 and reuse it in vertices 12 and 13.

`correct ASM` → IDO emits `lh s1,0x102(sp)` and uses `s1` for the blue byte of all three vertices. The only word spills between vertices 11 and 13 hold the two halved geometry offsets.
