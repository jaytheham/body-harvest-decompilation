## Incorrect ASM

Putting the two-pixel glyph advance in the for-loop update schedules the ra increment near the end and leaves sw v0,0x1AC(sp) in the loop-back delay slot.

## Code changed

Keep charIndex++ in the for-loop update and put renderX += 2; in the body after the last-glyph early return.

## Correct ASM

The ra increment precedes the pointer advance and both stores precede the loop-back branch. The two-pixel advance fills the delay slot. The saved-register and spill-slot assignments still differ.
