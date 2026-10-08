### Animation pointer table embedded in a placeholder skeleton array

The old D_802E6D60_32AEB0 placeholder contained 45 skeleton entries, but entry 12 actually encoded three pointers and a null word. Split it into 12 skeleton entries, a four-pointer D_802E6E20_32AF70 array, and 32 trailing skeleton entries at D_802E6E30_32AF80. Symbolic pointers to entries 0, 4, and 8 preserve the bytes and give the animation call a correctly typed table.

func_802E1EFC_32604C passes three halfword parameters: the root joint, its signed-byte child from D_8014DD5C, and arg1's alien joint. Its completion result is a signed byte. After triggering arg1's effect, the speed decrement applies to arg0. This complete parameter array and corrected instance access match the target on the first build.
