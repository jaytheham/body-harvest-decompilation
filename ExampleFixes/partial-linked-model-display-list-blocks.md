# Linked model renderer: initial display-list block boundaries

In `func_800D978C_E873C` (`CFE30.c`), use the effect entry's typed Gfx pointer for the display list at offset 8, and two Unk80052B40 vectors for the linked entry's position and rotation payload. The matrix call can take spatial and &spatial[1] rather than byte pointer arithmetic. These views preserve the baseline instruction sequence.

Without a block around the initial rendering setup, IDO keeps the shared 0x06000000 display-list opcode in s6 across the entire loop. This displaces the two float-global addresses and forces the 0x4000 heading constant to be rematerialized inside the loop. Wrapping the five initial display-list/state commands in if (1) prevents that cross-loop constant reuse. One through three blocks yield score 444; four nested blocks yield 429 by restoring the -6 constant's register as well.

## Outside vehicle detail renderer: partial result

In `func_80101EF4_110EA4`, the detail table uses two 32-bit address words, a position vector at offset 8, and signed 16-bit flags at offset 0xE. Replacing the byte-array initializer with these fields preserves every data byte and enables the target halfword flag loads.

Sharing one Gfx temporary within each of three separate scopes (initial commands, detail loop, and cleanup loop) reduces the original 0x90 frame to the target 0x50 frame. Placing the two command-word stores on one source line also improves scheduling.

Comparing an address word as a pointer against the existing display-list array symbols prevents unwanted constant hoisting seen with integer comparisons. Keep matrix advancement as typed Mtx pointer arithmetic.
