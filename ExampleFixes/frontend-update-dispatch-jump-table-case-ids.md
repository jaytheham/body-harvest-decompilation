`incorrect ASM`: In `func_8008CC3C_5D0EC`, switch cases 8 and 9 call `func_8008BB38_5BFE8` and `func_8008C7E4_5CC94`, while case 10 is empty. This disagrees with the target's eleven-entry jump table.

-> `code changed`: Make case 8 empty, move the first call to case 9 and the second to case 10, and remove the explicit `jtbl_800AEC88_7F138` placeholder. Keep the direct array-field switch and byte counter. Add the called-function declarations in the shared US header.

-> `correct ASM`: The compiler emits the target jump table at `0x800AEC88`, every update-dispatch and fade instruction matches, and the full US ROM checksum passes.
