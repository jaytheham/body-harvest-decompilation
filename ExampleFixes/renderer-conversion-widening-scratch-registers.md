incorrect ASM: In func_800F63D0_105380, the retained reconstruction scores 22900 with the correct 0x168 frame and named homes. Many later scratch-register choices differ; for example the display-list advance corresponding to ROM 0x1065AC uses ADDIU t6,v1,8 followed by SW t6,0(a1), instead of the target t9 pair.

code changed: At the initial direction-X projection and the later midpoint-X conversion, replace (s16)(s32)product with (s16)(s64)(s32)product. The widening occurs after the original float-to-s32 conversion, so it preserves the value before the existing s16 truncation. Keep the other conversions unchanged: independently beneficial identities are not additive. A longer (s16)(s32)(s64)(s32) spelling produces the same native ROM as the retained simpler form.

correct ASM: The display-list advance becomes ADDIU t9,v1,8 followed by SW t9,0(a1), and many neighboring scratch-register fields match. The frame and named homes remain exact. The enabled candidate improves from 22900 to 21600; instruction-order/opcode annotation rows fall from 198 to 189, and register-only rows from 719 to 618. The function remains NON_MATCHING with other arithmetic-order and cache differences; both full native US and EU ROM checksums pass with its assembly fallback retained.

incorrect ASM: In func_800F7790_106740, the display-list vertex advance corresponding to ROM 0x106D84 uses LW t7,0(a0), ADDIU t6,t7,0x10, SW t6,0(a0). The target uses t6 for the loaded pointer and t7 for the incremented pointer. The enabled reconstruction scores 8395 with the exact 0x138 frame and named homes.

code changed: At the direction-Z projection only, replace zStep = (s16)(s32)(direction.vector.z * spF4) with zStep = (s16)(s64)(s32)(direction.vector.z * spF4). The widening follows the original float-to-word conversion and preserves the final signed halfword. Leave the other six halfword conversion sites unchanged; all 64 combinations containing this change were no better.

correct ASM: The advance becomes LW t6,0(a0), ADDIU t7,t6,0x10, SW t7,0(a0). Several later scratch-register fields also match. The enabled candidate improves to 8055, retaining the exact first 124 instructions, 0x138 frame, and named homes. Structural annotation rows fall from 61 to 56 and register-only rows from 368 to 298. The function remains NON_MATCHING; both native ROM checksums pass with its assembly fallback and original late-rodata ownership retained.

incorrect ASM: The endpoint blue load uses LH t2,0xe6(sp) followed by SW t2,0x20(sp). The last two endpoint blue stores each reload 0x20(sp).

code changed: Hold the three endpoint colors in s32 locals. Read green and blue directly from their volatile halfwords before the texture stores and assign the red local in the first red store.

correct ASM: A single LH ra,0xe6(sp) supplies all three endpoint blue stores and eliminates the extra SW and two LW instructions. The original holds blue in s0. The linked diff score improves from 8055 to 7932.

incorrect ASM: Deleting all eleven empty conditions from the 8055 draft changes ADDIU sp,sp,-0x138 to ADDIU sp,sp,-0x140. Removing the unused angle calculations also drops the loads and SUBU and NEGU instructions around ROM 0x106CD4.

code changed: Retain the address conditions and the conditions that consume the intermediate angle values. Removing any one condition from the endpoint color draft increases the linked diff score.

correct ASM: The frame returns to 0x138. The angle block retains the three loads, first SUBU, and NEGU. This draft still lacks the second SUBU at ROM 0x106CE8.

incorrect ASM: The renderer loads both operands of the second subtraction, then reloads a half-width from the stack in place of the target SUBU.

code changed: Assign the Z difference to the existing zTri local before the empty angle condition and test zTri ^ halfSin in the preceding empty condition. This retains the subtraction without an emitted XOR or branch.

correct ASM: SUBU, NEGU, SUBU precede the two signed halvings, as in the original. The second SUBU still uses a3, t8, t6 instead of v0, t7, t8. The linked diff score improves from 7932 to 7658 and the structural edit rows decrease from 56 to 51.
