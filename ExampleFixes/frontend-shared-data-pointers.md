`incorrect ASM`: Compiling the US frontend data for PAL leaves the render descriptor at ROM 0x65F9C pointing to 0x80094CC8 instead of 0x80095488.

-> `code changed`: Use `FRONTEND_PTR(0x80094CC8)` for frontend data addresses, or its four `FRONTEND_PTR_B3` through `FRONTEND_PTR_B0` components when a pointer occupies bytes in a descriptor. The PAL adjustment is 0x7C0, not the 0x30 gameplay-code adjustment. Compile the same typed data objects in both versions and retain the PAL-only `"Zero"` difficulty label in place of US `"Easy"`.

-> `correct ASM`: The descriptor contains 0x80094CC8 in US and 0x80095488 in PAL; both complete ROM checksums match.
