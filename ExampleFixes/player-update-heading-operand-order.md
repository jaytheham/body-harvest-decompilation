`incorrect ASM`: With the exit waypoint loads in target order, `func_800ED78C_FC73C` still emitted `lw t7,0xB0(sp)` at `0xFCB3C` and `move a0,t7` at `0xFCB64`.

-> `code changed`: Put the masked `targetHeading` on the left of the inequality and the masked vehicle heading on the right. Use `(s32) D_80157600.unkC + arg0->unk2` for the exit fallback altitude sum.

-> `correct ASM`: The two instructions emit `lw t8,0xB0(sp)` and `move a0,t8`, and the four intervening heading comparison instructions that differed also use the target registers. The combined changes reduce the linked ROM mismatch count by 20 while preserving instruction order.
