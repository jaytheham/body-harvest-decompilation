`incorrect ASM`: In `func_802DB1D4_31F324`, the first joint-array store occupied the actor-ID reload's position at ROM `0x31F42C`. IDO moved the `lbu a0,0xB3(sp)` past the timer branch. The high-timer particle block started with `lh t7,0x2C(s0)` and used a different scratch-register sequence through the effect call.

-> `code changed`: Assign `joints[4]` before the four preceding array elements. Mask the assignments to `joints[0]` and `joints[1]` to their low halfwords. Keep one explicit byte mask on the actor ID at the animation switch call. Reuse the existing word scratch for the masked lower-timer angle before writing the halfword, and capture `joints[5]` in the parent local with an empty test before the final parent-type condition.

-> `correct ASM`: `lbu a0,0xB3(sp)` precedes the last link lookup and all five joint-array stores. The high-timer random-effect block from `0x31F46C` through `0x31F570` matches byte-for-byte. The lower-timer effect block differs by two words and the final parent reload uses `lh v1,0x92(sp)`. The frame remains `0xB0`. This is a partial match with a diff score of 480, down from 1211.

`incorrect ASM` -> In case 5, adding `0x4000` to the heading writes `t7` instead of updating `v1`. In the lower-timer path, the angle load uses `v0` instead of `t6`. Moving the case 5 mask alone rotates the scratch registers through the lower-timer block.

`code changed` -> Keep the unmasked sum in `sp4C` in case 5 and cast it to `u16` at each trig call. Use `alienInstances[arg0].unkA += 0x4B` in the lower-timer path. Put the child coordinate first in each case 2 sum. After checking the parent index against `0xFF`, load its type into `value` before checking for type `0x1B`.

`correct ASM` -> Case 5 updates `v1` in place, and the lower-timer angle uses `lh t6` and `addiu t7,t6,0x4B`. The instructions from `0x31F7CC` through `0x31FAD4` match byte-for-byte. The first coordinate load for each axis in case 2 uses `t6`. The final parent branch's argument mask and delay-slot move match. The linked US draft drops from 79 to 60 register-only differences and from score 480 to 385, with matching bytes outside the routine.

`incorrect ASM` -> The second chain link at `0x31F3FC` loads into `t0`. The ROM loads it into `a3`.

`code changed` -> Assign `chain2_d` immediately after `chain1_d`, then assign `childC`. Both source reads still precede the joint-array stores.

`correct ASM` -> IDO keeps the target load order and emits `lb a3,0xD(t4)`. The following shift also reads `a3`, with its destination still different. The linked draft has 59 register-only differences, down from 60, and score 375, down from 385.

`incorrect ASM` -> The prologue uses `v1` for the instance table and `a1` for the parent index. The ROM uses `a1` and `v1` respectively.

`code changed` -> As an allocation control, hold the initial parent index in `sp4C` through the early return and `joints[5]` store. Keep the later halfword `parent` reload. Apply the second-link source reorder above.

`correct ASM` -> The prologue through `0x31F3BC` matches byte-for-byte. The allocator selects the parent first at priority `3.333333`, ahead of the final joint index at `3.000000`, and assigns the final joint index to `a0`. The later actor-ID reload at `0x31F42C` then trades places with `li a1,-0xC8` at `0x31F458`. The retained draft keeps those two instructions in target order.

`incorrect ASM` -> The final parent check builds the alien table address in `v0`, scales the index in `t7`, and loads the type into `v0`.

`code changed` -> Reload `joints[5]` into the existing word scratch `sp4C`, retain the empty test on that value, and combine the sentinel and type checks with `&&`.

`correct ASM` -> The table address uses `t7`, the final shift uses `t8`, and `lbu t7,-0x7E4E(t7)` feeds the type branch. The parent index still uses `a0` where the ROM uses `v1`. The linked US draft falls from 59 to 56 differing words and from score 375 to 335.

`incorrect ASM` -> The first halfword link at `0x31F400` uses `lb t7,0xC(t4)`. The following node lookup uses `t8` for the scaled index, and the halfword store reads `t7`.

`code changed` -> Move the explicit `& 0xFFFFu` from the `spA0` assignment to the `sp9C` assignment. Both destinations are signed halfwords.

`correct ASM` -> IDO emits `lb t6,0xC(t4)`, `sll t7,a3,4`, `addu t5,t3,t7`, and `sh t6,0xA0(sp)` at the target offsets. The linked US draft falls from 56 to 52 differing words and from score 335 to 315.

`incorrect ASM` -> The linked case 2 heading load at `0x31F5C4` uses `lh t6,6(s0)`. The native compiler listing before final assembly already uses `lh v1,6(s0)`, followed by a mask into `t6`, a copy to `v1`, and the argument mask into `a0`.

`code changed` -> As a control, assign the unmasked heading to `sp4C` and let the unsigned-halfword trig parameters apply the mask. IDO reserves the same spill offsets in both forms. Its assembly listing drops the first mask and copy, and the later scratch-register sequence changes.

`correct ASM` -> The linked control uses `lh v1,6(s0)` at `0x31F5C4`. It retains the argument spill at `sp+0x4C` and increases the routine's total to 163 differing words. Masking just the X or Y sum to its low halfword before passing it to `func_80088E40_97DF0` brings the total back to 55 while retaining the correct heading load. That control changes the order of instructions in the coordinate setup. The guarded draft keeps the explicit heading mask and its 52 differing words.
