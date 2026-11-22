`incorrect ASM`: Inlining the level names in `4DC90.c` puts their strings ahead of the jump table and moves its literal loads away from their target addresses. Moving the whole initialized data block to `52690.c` makes the tile scroll word external, replacing the target's single `lw t4,0x49d0(t4)` with a separate address calculation and reloads around the display-list stores.

-> `code changed`: Inline the level names in `52690.c` alongside its objective strings. Split initialized data at US ROM `0x64E90` and PAL ROM `0x65650`. Keep the scroll word function-local static in `4DC90.c` and use the linker symbol eight bytes before the first English level-name pointer for the table base. The previous section's zero padding supplies the two leading null entries.

-> `correct ASM`: The scroll function again uses `lw t4,0x49d0(t4)`, `addiu t4,t4,-6`, and `sw t4,0x49d0(at)` in the US build. The string and numeric pools return to their original addresses, and both ROM checksums match.
