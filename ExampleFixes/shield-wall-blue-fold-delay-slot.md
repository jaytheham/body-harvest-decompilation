## Incorrect ASM

When the blue remainder is used only after the green stores, IDO schedules the second `div` after the red fold. With the comparison and result held in the same short, IDO instead places the last green `sb` in the blue branch delay slot.

## Code changed

Keep the signed blue remainder in a word, copy it into a short for the comparison, and initialize the active alpha from that short with `bright = blueCheck * 0 + 0xFF`. Before the blue fold, narrow the word remainder into the same short that held the red channel. Use the saved short to compare against 256 and to calculate the reflected result.

## Correct ASM

The two `div` instructions precede the red fold. The final green store precedes the blue `bnez`, whose delay slot contains `move a0,t7`. This reproduces the target instruction in the slot while other register and placement differences remain.
