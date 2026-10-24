`incorrect ASM`: In `func_8011D030_12BFE0`, testing `inst->unk8 & 1` gives the right instructions but starts the flags load in T9 instead of T0, shifting subsequent temporary registers. Computing the upper X-cell bound before the lower bound also reverses their shift destinations.

-> `code changed`: Use `(inst->unk8 & 0xFFFF) & 1`, following nearby matched `func_8011D2DC_12C28C`. Compute the lower X bound first, then the upper bound, with both assignments on the same physical source line: `xCell = (inst->xCoord - xHalfSize) >> 8; xMax = ((inst->xCoord + xHalfSize) - 1) >> 8;`.

-> `correct ASM`: The redundant halfword mask emits no extra instruction and the flags load uses T0. The lower-bound shift uses T6, the upper-bound shift uses T7, `move a0,t7` precedes the branch, and `move s4,t6` occupies its delay slot. Every instruction in the function matches.
