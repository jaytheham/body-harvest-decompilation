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

`incorrect ASM`: In `func_800B2354_C1304`, the Y origin is narrowed with `t7` before the X origin uses `t9`. The ring offsets use `lb t7`, and the X fraction spills after the unsigned radius conversion.

-> `code changed`: Subtract the origin bias from X before Y. Compute both tile indices and their byte fractions before the two ring offsets, then convert and increment the radius.

-> `correct ASM`: The origins narrow with `t7` for X and `t9` for Y. The ring offsets use `lb t8`. The radius division is followed by `andi t7,v0,0xff; move s1,a1; sw t7,0x68(sp)` before the FCSR-controlled conversion.

`incorrect ASM`: The positive Y arm uses `subu t9,a3,s5` in the branch delay slot and `sll t6,s0,8` at the destination.

-> `code changed`: Assign `(s16)(cellSize - fracY) + (y << 8)` to the signed halfword distance, then subtract 256 in a separate assignment.

-> `correct ASM`: The delay slot uses `subu t7,a3,s5` and the destination starts with `sll t8,s0,8`. Seven instruction words still differ in the addition and the argument to `sqrtf`.

`incorrect ASM`: In `func_800B2854_C1804`, splitting the positive Y distance into two assignments uses `addu t6,t7,t8` and `mflo t9` before the square-root call. Narrowing only `cellSize - fracY` in a single expression changes the temporary registers after the call.

-> `code changed`: Keep `(s16)(cellSize - fracY) + (y << 8) - 256` in one assignment and narrow the square-root result to a signed halfword before subtracting the inner radius.

-> `correct ASM`: The Y arm uses `addu v0,t7,t8; addiu v0,v0,-256`, the square uses `mflo t7`, and the temporary registers after `sqrtf` match. The same change produces a byte-for-byte match in `func_800B2354_C1304`. Both US and PAL ROM checksums pass with both C implementations enabled.
