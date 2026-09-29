# Path-node widths and temporary slots in IDO 5.3

Matched `func_802DA3EC_192EFC` with the full ROM checksum.

The starting implementation had identical instructions and registers, but three
locals used incorrect stack offsets: pathA at 0xA2 instead of 0xA0, pathB at
0xA0 instead of 0x9E, and path4 at 0x9A instead of 0x96.

Moving the unused s16 padding declaration immediately after the parent pointer
and widening the three intermediate path-node locals from s8 to s16 corrected
those offsets. The source fields remain signed bytes; widening these locals did
not change their load instructions.

This also moved later locals and compiler temporaries down four bytes. Removing
the early dx declaration corrected the layout, but reusing the animation phase
variable for dx changed register allocation in the later animation block.
Keeping dx separate and declaring it last restored registers, but still consumed
four bytes before compiler temporaries. The final fix replaced the existing
late random-result local with dx and reused dx for that random result. This kept
the required declaration footprint and preserved the animation registers.

When only stack offsets differ, check local widths and declaration order first.
Reusing unrelated variables can affect register allocation in distant blocks;
verify the entire function and the full ROM after changing their lifetimes.
