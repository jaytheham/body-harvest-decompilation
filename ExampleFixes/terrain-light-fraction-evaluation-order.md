`incorrect ASM`: `func_800B2354_C1304` emitted an extra setup copy for the X base, and the radius divide followed the first fraction spill.

-> `code changed`: Keep the Y fraction before the radius calculation, evaluate the X fraction after incrementing the byte radius, and allow the byte assignment to perform its implicit unsigned float conversion.

-> `correct ASM`: The extra X-base copy disappears, the radius divide occupies the target position, and the complete function has the target instruction count and 0x90 frame. The X-fraction spill still needs scheduling work; this remains a partial `NON_MATCHING` checkpoint.

`incorrect ASM`: The positive-X path shifted the loop coordinate before subtracting the fractional position from 256.

-> `code changed`: Use `dx = (s16)(cellSize - fracX) + (x << 8) - 256;`.

-> `correct ASM`: The subtraction precedes the shift, matching the target operation order without adding an extension instruction. Temporary register allocation and other setup ordering remain unmatched.

`incorrect ASM`: `func_800B2854_C1804` contains an extra X-base setup copy, places the radius divide after the first fraction spill, and shifts the positive-X coordinate before subtracting its fractional position from 256.

-> `code changed`: Apply the same fraction ordering used by the neighboring radial-light function: compute Y fraction first, assign the float radius directly to its byte, increment it, then capture X fraction. Keep X fraction unsigned and cast `cellSize - fracX` to a signed short before adding the shifted coordinate. Retain the word and halfword frame-padding homes.

-> `correct ASM`: The extra setup copy disappears, the function has the exact target instruction count and 0x90 frame, and the positive-X subtraction precedes the shift. The comparison improves from 2180 to 1370; the function remains NON_MATCHING because startup normalization and fraction-spill timing still differ.

Incorrect ASM: func_800B2854_C1804 used `addu v0,t6,s5` in the negative-Y arm, with the following square/sum temporary registers diverging as well. Code changed: narrow the unsigned byte fraction only at this halfword geometry operation, `dy = (s16)fracY + y * -256`, matching the existing signed-halfword handling of the X fraction. Correct ASM: `multu s0,s8; mflo t6; addu v0,s5,t6; sll t7,v0,16; b ...; sra v0,t7,16`. The function remains NON_MATCHING, improving from 1370 to 970 with the target 0x90 frame and instruction count; all instructions from the square-root return conversion through the epilogue match.

Incorrect ASM: the sibling func_800B2354_C1304 also emitted `addu v0,t6,s5` and diverging square/sum temporaries. Code changed: apply the same `(s16)fracY` operand narrowing in its negative-Y branch. Correct ASM: the six-instruction multiply, ordered addition and halfword normalization sequence matches its target at ROM 0xC1530; the enabled score improves from 1480 to 970 with the exact 0x90 frame and instruction count. Startup ordering remains NON_MATCHING.
