`incorrect ASM`: In `func_802DB1D4_31F324`, the first joint-array store occupied the actor-ID reload's position at ROM `0x31F42C`. IDO moved the `lbu a0,0xB3(sp)` past the timer branch. The high-timer particle block started with `lh t7,0x2C(s0)` and used a different scratch-register sequence through the effect call.

-> `code changed`: Assign `joints[4]` before the four preceding array elements. Mask the assignments to `joints[0]` and `joints[1]` to their low halfwords. Keep one explicit byte mask on the actor ID at the animation switch call. Reuse the existing word scratch for the masked lower-timer angle before writing the halfword, and capture `joints[5]` in the parent local with an empty test before the final parent-type condition.

-> `correct ASM`: `lbu a0,0xB3(sp)` precedes the last link lookup and all five joint-array stores. The high-timer random-effect block from `0x31F46C` through `0x31F570` matches byte-for-byte. The lower-timer effect block differs by two words and the final parent reload uses `lh v1,0x92(sp)`. The frame remains `0xB0`. This is a partial match with a diff score of 480, down from 1211.

`incorrect ASM` -> In case 5, adding `0x4000` to the heading writes `t7` instead of updating `v1`. In the lower-timer path, the angle load uses `v0` instead of `t6`. Moving the case 5 mask alone rotates the scratch registers through the lower-timer block.

`code changed` -> Keep the unmasked sum in `sp4C` in case 5 and cast it to `u16` at each trig call. Use `alienInstances[arg0].unkA += 0x4B` in the lower-timer path. Put the child coordinate first in each case 2 sum. After checking the parent index against `0xFF`, load its type into `value` before checking for type `0x1B`.

`correct ASM` -> Case 5 updates `v1` in place, and the lower-timer angle uses `lh t6` and `addiu t7,t6,0x4B`. The instructions from `0x31F7CC` through `0x31FAD4` match byte-for-byte. The first coordinate load for each axis in case 2 uses `t6`. The final parent branch's argument mask and delay-slot move match. The linked US draft drops from 79 to 60 register-only differences and from score 480 to 385, with matching bytes outside the routine.
