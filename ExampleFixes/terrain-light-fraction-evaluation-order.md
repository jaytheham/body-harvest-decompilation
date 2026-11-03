`incorrect ASM`: `func_800B2354_C1304` emitted an extra setup copy for the X base, and the radius divide followed the first fraction spill.

-> `code changed`: Keep the Y fraction before the radius calculation, evaluate the X fraction after incrementing the byte radius, and allow the byte assignment to perform its implicit unsigned float conversion.

-> `correct ASM`: The extra X-base copy disappears, the radius divide occupies the target position, and the complete function has the target instruction count and 0x90 frame. The X-fraction spill still needs scheduling work; this remains a partial `NON_MATCHING` checkpoint.

`incorrect ASM`: The positive-X path shifted the loop coordinate before subtracting the fractional position from 256.

-> `code changed`: Use `dx = (s16)(cellSize - fracX) + (x << 8) - 256;`.

-> `correct ASM`: The subtraction precedes the shift, matching the target operation order without adding an extension instruction. Temporary register allocation and other setup ordering remain unmatched.