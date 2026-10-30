`incorrect ASM`: The five-argument calls in the `func_800B604C_C4FFC` reconstruction put the texture-bank byte in the first stack argument at `sp+0x10`. The target stores the row there and stores the texture bank at `sp+0x14`.

-> `code changed`: Add an unused sixth `s32 arg5` to the declaration and definition of `func_800B5EE4_C4E94`. Pass `(tile, arg0, y & 0xFF, x & 0xFF, y & 0xFF, arg6)` from each of the four tile-rendering paths. The third and fifth arguments intentionally repeat the row.

-> `correct ASM`: The caller supplies the row at `sp+0x10` and the texture bank at `sp+0x14`, matching the target call ABI. The helper consumes its fifth argument as the row and ignores its third and sixth arguments. Its existing assembly remains byte-for-byte identical; both US and EU whole-ROM checks pass with the renderer still using its assembly wrapper. The full renderer reconstruction remains unmatched.
