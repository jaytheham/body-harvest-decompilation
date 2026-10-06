# Scrolling column: unsigned index and for-loop scheduling

Matched func_800B42B0_C3260 (IDO 5.3 -O2 -mips2 -32).

Inlining the two tile pointers retained their cached s6/s7 addresses while removing their unused named stack homes. The byte-addressed array and halfword array expressions remain distinct, which preserves both cached addresses. Narrow the list counter and brightness to u8 and the tile index to u16; order declarations around the RGB and height buffers to reproduce the 0x70 frame and buffer offsets.

The u8 list counter needs an unsigned promotion in its array subscript. Multiplying (u32)counter by two removes an extra move of the promoted counter into v0. Let the u16 tile index assignment perform truncation; an explicit redundant 0xFFFF mask changed temporary allocation throughout the loop.

Use a for loop for the outer byte counter. The equivalent do/while version scheduled its initial zero store before the invariant setup and moved the narrowed row value too early in the epilogue. A for loop placed the zero store after the invariants and the row-value copy in the branch delay slot. Finally, initialize the local row before incrementing the global column; this fixes the initial t2/t3/t4 allocation without changing instruction order.

The final function and full ROM both match exactly. Removing the redundant u8 casts from the row array indices also preserves the match.

The left-scrolling sibling, func_800B4660_C3610, uses the same declarations and loop structure. Initialize both map coordinates before the ring coordinates, with the column copied from a post-decrement of mapPosX. After wrapping the ring column, initialize the row and decrement the copied global map column separately. Reading the already decremented mapPosX into that global eliminates a target store and one of its two subtraction instructions. Moving these initializations reproduces the exact initial registers and map-base spill timing.
