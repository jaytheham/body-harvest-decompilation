# Byte counter promotion in tile loops

`func_800B32AC_C225C` matches with a signed 32-bit column counter and an unsigned byte row counter. Cache `tile = arg0[i]` before incrementing the column. Mask the column after the four height checks, and use indexed array accesses with a `for (i = 0; i != 0xFF01; i++)` loop. IDO reduces the induction variable to the target byte counter and advancing pointer.

The row update must be `y = (u8)((s32)y + 1);`. Compared with `y = (y + 1) & 255`, the explicit signed promotion preserves the target ADDIU/ANDI/MOVE sequence. The byte row type also preserves the MOVE before the lower-bound comparison in the special-level water rectangle. Neither a signed row counter nor an implicit byte increment produces both sequences.

Verified with the full ROM build checksum, in addition to a zero function diff.
