incorrect ASM: In `func_800FB504_10A4B4`, the alien scan keeps its index in S0 and its best score in A3, omitting the target index and score spills at `0x94` and `0x90`. The old post-decrement copy uses V0.

-> code changed: Separate `scanIndex` from the shared pointer/word scratch. Put the index in the original first word and the shared union in the former angle-difference word; reuse `diff` for that difference. Use `while ((work.value = scanIndex--), work.value)` and retain `if (work.value) {}` after the scan. Preserve the removed temporary reservation with the existing control words.

-> correct ASM: The index uses A3, the score T0, and the old-value copy S0. The complete scan instruction sequence matches, including the stores and reloads at `0x94` and `0x90`.

incorrect ASM: The double coefficient multiply at `0x10AB78` uses `mul.d f4,f18,f16`, and the first coordinate's conversion uses `cvt.d.s f18,f10`. The floating-register cycle then differs through the clipping calculations. Changing every coefficient to a named scalar alone reverses the two trig calls and loses the target halfword return slot.

-> code changed: Declare the four existing double objects as `ShadowGeometryConstant` in `variables.us.h` and read `.value`. Capture the cross-axis cosine/sine in a signed short before the heading cosine. Keep that capture and its coordinate assignment on the SAME PHYSICAL SOURCE LINE. Keep the short at `sp+0x3A`; the two existing four-byte control words preserve the scan-pointer and animation-pointer temporary reservations. Reuse those words for `aimMask` and `controllerCurve` rather than merging these phases into the later weapon index and angle difference.

-> correct ASM: The multiply becomes `mul.d f4,f16,f18`, the conversion `cvt.d.s f16,f10`, and all following floating arithmetic registers and operand order match. Trig results use `sh/lh 0x3A(sp)`, the scan pointer `0x30(sp)`, and the animation pointer `0x2C(sp)` in the unchanged `0x98` frame. No rodata bytes or definitions move.

incorrect ASM: Repeated global player-field expressions use A1 and move an address load into the absolute-angle branch's delay slot, losing the target branch-likely copy.

-> code changed: Reload `work.player` before the yaw limits and after the arc-of-fire adjustment, using that typed pointer through each corresponding field-access phase. Use the expired `steerClamp` halfword for the raw camera angle and retain `cosVal` for the scaled cosine result.

-> correct ASM: The later player pointer uses S0 and the absolute-angle branch/copy sequence matches. The raw camera angle uses V0 while the cosine result uses V1. The earlier controller join still has a separate V1-to-S0 copy and remains unfinished.

incorrect ASM: The final Z conversion writes directly to V1 and leaves a NOP where the target copies the raw A3 result into V1. Clipping limits occupy V0 and displace the cached world Y coordinate to A3; the output-point address load moves before the last clipping branch.

-> code changed: Reuse the expired scan word in `nextZ = scanIndex = ...`. Reuse `bestScore` for the four clipping limits, leaving `selectedInput` for weapon selection.

-> correct ASM: The Z conversion uses A3 followed by `move v1,a3`; limits use T0 and world Y uses V0. The output-point LUI returns to the join after the last clipping branch.

incorrect ASM: Before the final helper, `move a1,zero` appears before the animation clamp's comparison while the fallback pointer's LUI occupies the branch delay slot.

-> code changed: Keep the complete helper-selector `if/else` and the following `work.value` pointer selection on ONE PHYSICAL SOURCE LINE.

-> correct ASM: The LUI precedes the comparison and `move a1,zero` occupies the target delay slot. The enabled function improves from score 2483 to 265, with every floating operation, stack home, and scan instruction matching. It remains NON_MATCHING: six pointer-load register fields, their redundant join copy, and three controller scratch-register fields remain.
