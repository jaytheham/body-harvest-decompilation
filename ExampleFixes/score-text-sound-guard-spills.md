## Incorrect ASM

The width and count are reloaded before the matrix-base address is ready. Their stores precede the signed division by two, and the glyph-loop guard tests the count in v0.

## Code changed

Declare the scan's current character as s16. The source character is still loaded from a u8 array. Remove the discarded tests of the animation step and character count.

## Correct ASM

The width and count reload into s4 and s3 after the matrix-base address. The sound guard stores s3 immediately before the second range branch and s4 in its delay slot. The glyph-loop guard tests s3.
