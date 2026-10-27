`incorrect ASM`: The room-kind switch instructions match, but its jump table points cases 1, 2, and 3 at incorrect blocks. Removing the placeholder also puts the generated table after the floor-renderer constants, changing its load address from `0x4A88` to `0x4AB0`.

-> `code changed`: Give cases 1 and 3 explicit `break` labels, put the first room check in case 2, and keep the second check only in case 4. Remove the placeholder table. Keep the following five constants in a late-rodata prefix on the gradient renderer's existing assembly fallback, with their original symbols and alignment, and declare C references in the variables header.

-> `correct ASM`: The generated table is `[0x80072FA8, 0x80072EB4, 0x80072FA8, 0x80072F04, 0x80072FA0]` at `0x800A4A88`; the constants retain their original addresses. The function diff is zero and the full ROM checksum passes.
