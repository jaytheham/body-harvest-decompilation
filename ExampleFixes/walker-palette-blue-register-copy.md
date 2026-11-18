`incorrect ASM` → At US ROM offset `0x104744` in `func_800F554C_1044FC`, IDO emits `sb t4,0xf3(sp)` followed by `li t3,0x80`. At `0x104890` it copies blue with `move a3,t5`.

`code changed` → Load the middle palette’s blue byte into `u16 cB`. Between vertex 0’s blue and alpha stores, assign `baseBlue = (u8)cB` to a second `u16`. Use `baseBlue` at vertices 3, 5, and 9 and `cB` at vertex 4. Delay the assignment of the saved red byte until after vertex 2’s Z store.

`correct ASM` → IDO emits `li t3,0x80` at `0x104744` and `move t2,t5` at `0x104748`, immediately before `sh t1,8(t6)`.

`incorrect ASM` → Vertices 3 and 5 wrote the saved blue byte with `sb t2,0xe(t7)` and `sb t2,0xe(t9)`.

`code changed` → Declare the palette byte local `cB` as `s16`. After computing the offsets for vertex 1, save `(u8)cB` in `baseBlue` for vertex 9. Use `cB` at vertices 3 and 5 and `(s8)cB` at vertex 4.

`correct ASM` → The US ROM emits `sb t5,0xe(t7)` at `0x104920` and `sb t5,0xe(t9)` at `0x104AB0`. The earlier `move t2,t5` still appears at `0x104748`.

`incorrect ASM` → Vertex 6 loaded the clamped blue channel with `lh t4,0xfc(sp)`. Vertices 6 and 7 emitted `sb t4,0xe(t6)` and `sb t4,0xe(t7)`.

`code changed` → After the last use of the lateral Z offset, reuse its signed halfword for the clamped blue channel. Assign it between the red and green stores for vertex 6 and use it as the blue byte at vertices 6, 7, and 10.

`correct ASM` → US offsets `0x104B44`, `0x104B48`, and `0x104BD8` emit `lh ra,0xfc(sp)`, `sb ra,0xe(t6)`, and `sb ra,0xe(t7)`.
