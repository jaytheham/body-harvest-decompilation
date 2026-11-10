`incorrect ASM`: In `func_80103308_1122B8`, the documented discarded-constant comparisons give the correct midpoint spill homes and most floating registers, but damping uses `f14` and the original X coordinate uses `f12`. The final phase restores every saved floating register after its last position store, and puts the stack adjustment in the return delay slot.

-> `code changed`: Append one additional `* damping` to the left coefficient product of the discarded comparison after `point->pos.z = chainZ`; leave the right product unchanged. Preserve the initialized endpoint comparisons. After the final `unused = arg1->unk2;` snapshot, add `if (unused) {}` on that same source line before computing the endpoint height. The earlier `unused` snapshot remains consumed by the discarded loop-end condition; remove its redundant increment/decrement pair.

-> `correct ASM`: Damping occupies `f12`, original X occupies `f14`, and the first 102 instructions are exact. The midpoint spill homes remain `sp+0x44/0x40/0x3C`, and all floating registers match. The endpoint restores `f24/f26/f28/f30` during its midpoint calculation, then `f22` and `f20` after their final uses, with the final Z `swc1` in the `jr ra` delay slot. Three loop scheduling differences and the final Y operand's `a3` versus `t2` remain unmatched.

`incorrect ASM`: The remaining loop-order and endpoint-register differences are still present with the two carried-coordinate observations and the first two endpoint comparison forms.

-> `code changed`: Remove the empty `if (chainZ)`, both empty `if (chainY)` blocks, and the empty `lastZ < lastY` and `lastY < lastX` comparisons. Retain `if (lastX < lastZ)` and the existing `if (1)` before the spring load.

-> `correct ASM`: The linked diagnostic ROM with the chain C draft enabled is byte-identical before and after removing those five blocks. Removing `if (1)` separately changes that ROM and worsens the function diff score from 260 to 290. The assembly fallback remains selected.

`incorrect ASM`: Deleting the final empty `if (unused)` while retaining literal `0.5` in the three endpoint midpoint calculations changes register allocation and raises the linked function diff score from 260 to 740.

-> `code changed`: Use the existing `f64 half` local in all three endpoint midpoint calculations and remove the empty condition after `unused = arg1->unk2`.

-> `correct ASM`: The linked function bytes are identical to the draft with the empty condition. The midpoint spill homes and floating register assignments stay the same, and the original loop scheduling and final Y register differences remain.

`incorrect ASM`: The walking-pointer loop uses `t0` for the chain cursor but emits no `.noalias $8,$sp` around the loop. The assembler schedules the Z load ahead of the 4.0 constant setup and each X/Y midpoint spill ahead of the next neighbor load.

-> `code changed`: In a diagnostic draft, use direct `D_801594E0[index]` and `D_801594E0[index - 1]` field accesses with a decrementing index. The compiler emits `.noalias $2,$sp` before the loop and closes the region after it. A scratch assembler replay added the equivalent directive for `t0` to isolate its effect.

-> `correct ASM`: The Z load follows the constant setup, and the neighbor Y and Z loads precede `swc1 $f4,0x44(sp)` and `swc1 $f8,0x40(sp)`, respectively. The replay changes exactly the nine words that differ in the linked loop. The indexed C draft reproduces that order with `v0` as the cursor, but changes the cursor setup and register allocation, so it is not selected.
