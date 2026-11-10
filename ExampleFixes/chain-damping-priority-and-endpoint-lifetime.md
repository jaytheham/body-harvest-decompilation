`incorrect ASM`: In `func_80103308_1122B8`, the documented discarded-constant comparisons give the correct midpoint spill homes and most floating registers, but damping uses `f14` and the original X coordinate uses `f12`. The final phase restores every saved floating register after its last position store, and puts the stack adjustment in the return delay slot.

-> `code changed`: Append one additional `* damping` to the left coefficient product of the discarded comparison after `point->pos.z = chainZ`; leave the right product unchanged. Preserve the initialized endpoint comparisons. After the final `unused = arg1->unk2;` snapshot, add `if (unused) {}` on that same source line before computing the endpoint height. The earlier `unused` snapshot remains consumed by the discarded loop-end condition; remove its redundant increment/decrement pair.

-> `correct ASM`: Damping occupies `f12`, original X occupies `f14`, and the first 102 instructions are exact. The midpoint spill homes remain `sp+0x44/0x40/0x3C`, and all floating registers match. The endpoint restores `f24/f26/f28/f30` during its midpoint calculation, then `f22` and `f20` after their final uses, with the final Z `swc1` in the `jr ra` delay slot. Three loop scheduling differences and the final Y operand's `a3` versus `t2` remain unmatched.

`incorrect ASM`: The remaining loop-order and endpoint-register differences are still present with the two carried-coordinate observations and the first two endpoint comparison forms.

-> `code changed`: Remove the empty `if (chainZ)`, both empty `if (chainY)` blocks, and the empty `lastZ < lastY` and `lastY < lastX` comparisons. Retain `if (lastX < lastZ)` and the existing `if (1)` before the spring load.

-> `correct ASM`: The linked diagnostic ROM with the chain C draft enabled is byte-identical before and after removing those five blocks. Removing `if (1)` separately changes that ROM and worsens the function diff score from 260 to 290. The assembly fallback remains selected.

`incorrect ASM`: Deleting the final empty `if (unused)` while retaining literal `0.5` in the three endpoint midpoint calculations changes register allocation and raises the linked function diff score from 260 to 740.

-> `code changed`: Use the existing `f64 half` local in all three endpoint midpoint calculations and remove the empty condition after `unused = arg1->unk2`.

-> `correct ASM`: The linked function bytes are identical to the draft with the empty condition. The midpoint spill homes and floating register assignments stay the same, and the original loop scheduling and final Y register differences remain.
