`incorrect ASM`: Enabling `func_8000A2B8_AEB8` while retaining the later global text placeholders changed its switch-table load from `lw t6, 0x7460(at)` to `lw t6, 0x7600(at)`.

-> `code changed`: Remove `jtbl_80037460_38060` and enable the existing C switch. Move only the remaining assembly-backed text tables and numeric placeholders into version-specific `.late_rodata` inputs attached to the existing `drawText` fallback. Preserve the four-byte alignment pads before the double constants. Leave the extracted target assembly unchanged.

-> `correct ASM`: `lw t6, 0x7460(at)` with every other instruction unchanged; the compiler-generated table occupies the original address and the complete US and EU ROM checksums pass.
