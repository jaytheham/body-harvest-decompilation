`incorrect ASM`: The frontend entry point assigns cases 7, 8, 9, 10, and 11 to bodies that the original jump table assigns to 13, 9, 14, 11, and 12. Compiling its switch also places the generated table after explicit later constants.

-> `code changed`: Correct the case IDs while preserving body order and remove the placeholder table. Move subsequent unmatched-function constants to version-specific late-rodata support attached to the next assembly-backed function. For PAL, compile the preceding strings in `data_7DD60.c`, ending at ROM 0x7F4F0; keep the final string word in `40720.c` before its generated table. This places both input section boundaries on 16-byte addresses and avoids IDO trailing padding.

-> `correct ASM`: The table load addresses 0x800AE4E0 in US and 0x800AF044 in PAL, every dispatch body and all fourteen table entries match, and both complete ROM checksums pass.
