`incorrect ASM`: Leaving the shared blank label as a named constant while inlining the other menu strings in `AAA70.c` put the blank label first at ROM offset `0x1514C0` and shifted the remaining strings by four bytes.

-> `code changed`: Emit the blank label as a discarded string literal after the three language tables. Define its linker symbol for each ROM so the existing reference from `AE0E0.c` resolves to that literal.

-> `correct ASM`: The format string starts at `0x1514C0`, and the blank label is at `0x151668` in the US ROM. Both ROMs retain the original string relocations and read-only data bytes.
