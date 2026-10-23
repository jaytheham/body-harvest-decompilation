`incorrect ASM`: In `func_800DBE20_EADD0`, `i = 0;` on the line before `do {` emits `move s1,zero` before the three cached global-base `addiu` instructions. All remaining instructions, registers, and stack offsets already match.

-> `code changed`: Put the initializer and do-while header on the same physical source line: `i = 0; do {`.

-> `correct ASM`: The three base-address additions occur first, followed by `move s1,zero` at ROM offset `0xEAE3C`. The complete US and EU ROMs match.
