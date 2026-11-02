`incorrect ASM`: In `func_8012F24C_13E1FC`, the function-private color counter produces the correct instructions but its `lw`/`sw` relocations resolve to US `0x8015EB90` instead of `0x8015FF84`.

-> `code changed`: Add a `.fixed_bss` mapping for `overlay_gameplay/outside/13DA70` at US `0x8015FF80` and PAL `0x8015FFB0`. Reserve the preceding four-byte end-of-level state slot with a private static word before the existing private counter.

-> `correct ASM`: The counter's `lui v0; lw v0` read and `lui at; sw v0` write resolve to US `0x8015FF84` and PAL `0x8015FFB4`, preserving every target instruction and the US ROM checksum.
