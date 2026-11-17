## Incorrect ASM

The score-text scan compares v0 against s0 instead of s0 against v0. The glyph threshold spills at 0x80(sp).

## Code changed

Use a signed halfword for the constant digit and make it the left operand of the scan comparison. Spell the threshold as ((charIndex + charIndex) * 5) + 0x5A and keep charIndex * 10 in the position calculation.

## Correct ASM

The scan emits bne s0,v0. The threshold still advances by ten and now spills at 0x84(sp).
