`incorrect ASM`: In `func_802D5190_2548D0`, replacing the word update with a direct word OR would lose the required `srl/ori/xor/sll/xor` bitfield merge; the matching C instead used a raw pointer at byte offset `0x5D8`.

-> `code changed`: Replace the pointer and manual shift/XOR expression with `buildingInstances[0x3E].statusFlags |= 0x20;`. Each instance is `0x18` bytes and its status word is at offset `8`, so `0x3E * 0x18 + 8 == 0x5D8`. The existing unsigned 20-bit field preserves the lower 12 bits.

-> `correct ASM`: IDO emits the identical `lw v0,0x5D8(a0); srl v1,v0,12; ori t6,v1,0x20; xor t7,t6,v1; sll t8,t7,12; xor t9,t8,v0`, followed by the original return and store.
