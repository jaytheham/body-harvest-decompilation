# Interior bitmask loop: indexed global access

`func_8007313C_15B1FC` matches with `for (i = 0; i < D_800E668C; i++)` and direct `D_800E66A8[i]` accesses. Cache the object ID as a `u8` local. Use direct indexed accesses to the global room catalog and building bitmask.

A named entry pointer makes byte writes potentially alias other globals and prevents hoisting the catalog pointer and building bitmask address. Caching the bound separately also allows IDO to unroll the loop. Direct global array accesses let IDO prove independence, hoist the addresses, and use the target pointer induction without explicit pointer arithmetic. Full ROM checksum and diff score 0 verified.
