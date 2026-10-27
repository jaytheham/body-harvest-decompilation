`incorrect ASM`: The tile-copy source and destination use `v1` and `v0`, the room argument moves to `a2`, and the room-size lookup exchanges the `currentLevel` and map-table address registers.

-> `code changed`: Refresh the room parameter from its assigned global, use that parameter for header fields and the tile copy, and read placed-object fields through the global. Copy with a byte cursor indexed by `offsetof(InteriorRoomData, tileMap)`, retain its empty conditional use, and use `do/while` for the fixed 100-byte loop. Pass `(u8)currentLevel` rather than its separately declared low-byte alias to the map loader.

-> `correct ASM`: The copy uses `lbu t4,0x80(v0)` and `sb t4,-1(v1)`, the room parameter stays in `a1`, and the lookup keeps the level address in `t0` and map address in `t1`. Narrowing the level argument still emits the original `lbu` at offset three. All instructions and the full US ROM checksum match.
