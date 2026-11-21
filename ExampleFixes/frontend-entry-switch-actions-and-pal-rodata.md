`incorrect ASM`: The frontend entry point assigns cases 7, 8, 9, 10, and 11 to bodies that the original jump table assigns to 13, 9, 14, 11, and 12. Compiling its switch also places the generated table after explicit later constants.

-> `code changed`: Correct the case IDs while preserving body order and remove the placeholder table. Move subsequent unmatched-function constants to version-specific late-rodata support attached to the next assembly-backed function. Keep all preceding strings in `40720.c` before its generated table, including the PAL inventory format string ending at ROM 0x7F4F4. Keeping that string and the table in one input section avoids IDO trailing padding between them.

-> `correct ASM`: The table load addresses 0x800AE4E0 in US and 0x800AF044 in PAL, every dispatch body and all fourteen table entries match, and both complete ROM checksums pass.

`incorrect ASM`: Inlining the local strings while leaving the credits definitions at the end makes the first diagnostic load address 0x800AD1A4 instead of 0x800AD7B4.

-> `code changed`: Move the externally referenced credits definitions before the first string-literal initializer, then inline the remaining strings. For PAL, move its packed credits to the same position, preserve version-specific literals, and replace the separate string object with the complete `40720.c` rodata section starting at ROM 0x7DD60.

-> `correct ASM`: The first diagnostic loads 0x800AD7B4 in US and 0x800ADF74 in PAL; all string references and both complete ROM checksums match.
