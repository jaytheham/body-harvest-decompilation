# Linked model renderer: initial display-list block boundaries

Still unmatched: func_800D978C_E873C in CFE30.c. Best tested score: 429, reduced from 1924 after 65 compiled variants. This is a partial result; the enabled candidate did not pass the ROM checksum.

Use the effect entry's typed Gfx pointer for the display list at offset 8, and two Unk80052B40 vectors for the linked entry's position and rotation payload. The matrix call can take spatial and &spatial[1] rather than byte pointer arithmetic. These views preserve the baseline instruction sequence.

Without a block around the initial rendering setup, IDO keeps the shared 0x06000000 display-list opcode in s6 across the entire loop. This displaces the two float-global addresses and forces the 0x4000 heading constant to be rematerialized inside the loop. Wrapping the five initial display-list/state commands in if (1) prevents that cross-loop constant reuse. One through three blocks yield score 444; four nested blocks yield 429 by restoring the -6 constant's register as well.

The retained candidate has the target's frame size and instruction count. Remaining differences are the -5/opcode temporary registers, and ordering of the two stack argument stores before func_800B93AC_C835C. The target stores the converted Z scale before finishing the linked-entry address; the candidate stores that argument in the call delay slot, with heading stored earlier. This also rotates later temporary registers.

Named scale and heading values did not improve this. Additional blocks around the visibility check, int/long expression forms, volatile float or heading reads, negated equivalent heading expressions, and integer scale coefficients also failed to improve 429. Volatile heading reads and negated heading expressions made the sequence substantially worse.

Retain the guarded candidate until these differences and the full ROM checksum are resolved.

## Outside vehicle detail renderer: partial result

func_80101EF4_110EA4 remains NON_MATCHING. The detail table uses two 32-bit address words, a position vector at offset 8, and signed 16-bit flags at offset 0xE. Replacing the byte-array initializer with these fields preserves every data byte and enables the target halfword flag loads.

Sharing one Gfx temporary within each of three separate scopes (initial commands, detail loop, and cleanup loop) reduces the original 0x90 frame to the target 0x50 frame. Placing the two command-word stores on one source line also improves scheduling. The retained score is 5248; setup scheduling and saved-register allocation still differ. The wrapped candidate passes the full ROM checksum.

Comparing an address word as a pointer against the existing display-list array symbols prevents unwanted constant hoisting seen with integer comparisons. Keep matrix advancement as typed Mtx pointer arithmetic.
