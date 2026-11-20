## Incorrect ASM

Splitting the default red, green, and blue stores with empty tests reproduces the three constant loads in `v1`. The same tests move the display-list cursor to `s0`, the link cursor to `s1`, and the selected group and alpha to `ra`.

## Code changed

Replace the separate empty endpoint test with a zero multiplier added to the default red value. Include `&D_8005BB2C`, the link cursor, and the link cursor shifted right by 16 in that expression alongside the endpoint values.

## Correct ASM

The display-list cursor is in `ra`, the link cursor is in `s0`, and the selected group and alpha are in `s1`. The three default constants remain in `v1`. The upper vertex pointer is also in `a1` for the red branch delay-slot store.
