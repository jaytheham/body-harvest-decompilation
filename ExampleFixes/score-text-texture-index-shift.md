## Incorrect ASM

An absolute read of the frame counter puts the dividend in t7 and the texture table address in t9. The assembler can move the table address ahead of divu and mfhi.

## Code changed

Use the named frame counter and scale its unsigned remainder with ((frameCounter % 7) << 1) << 8 inside the texture array subscript.

## Correct ASM

The frame load and table address reuse t9. The assembler leaves divu and mfhi between them and emits a single shift by nine for the texture array offset.
