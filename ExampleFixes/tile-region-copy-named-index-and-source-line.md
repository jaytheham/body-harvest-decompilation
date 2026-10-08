# Tile region copy: byte globals, named index, and source-line scheduling

Matched func_800B4050_C3000 with IDO 5.3 -O2 -mips2 -32.

Initialize the global byte coordinates from the arguments, then initialize the ring-buffer coordinates from those globals. This preserves the target masks and removes the duplicate argument loads generated when both pairs are initialized independently from the arguments.

Use u8 row and column counters in ordinary for loops. Give the map index a separate s32 local, then truncate to u16 only in the source-array subscript. The named index fixes the value-register allocation and leaves both counters with the target promoted copies. A named pointer to the current output row instead changes the allocation and does not match.

The row-offset assignment and the inner for statement must share one source line:

    rowOffset = (D_8014F89D + row) << 8; for (column = 0; column < 19; column++) {

Separating them produces identical instructions with different scheduling: the coordinate addition moves before the row-stride subtraction, and the row-offset copy moves before the destination-row address addition. Keeping them on one line restores the target order and gives an exact full-ROM match.
