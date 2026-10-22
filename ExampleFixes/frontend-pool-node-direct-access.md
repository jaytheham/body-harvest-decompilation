Incorrect ASM: `func_80083DBC_5426C` matched all operations and registers, but IDO scheduled `sb zero,0(v0)` immediately after the two global halfword loads. The target performs the parent decrement, global decrement, and minimum-index comparison first. Changing only the final clear to indexed access did not fix the order.

-> Code changed: Remove the named `Unk800DE840 *temp_v0` and its initializer. Replace every `temp_v0->field` access in this function with `D_800DE840[arg0].field`. Keep the named parent pointer and the existing count reloads. Converting both arrays to indexed access also fixes the order, but changes the parent/count/neighbor register allocation.

-> Correct ASM: The complete final sequence becomes `lh t6,0(v1); lh t9,0(a1); addiu t5,a3,-1; addiu t8,t6,-1; slt at,a0,t9; sb zero,0(v0); sb t5,4(a2)`, followed by the target branch and halfword store in its delay slot. The function diff is zero and the full US ROM verifies `build/bh.us.z64: OK`.
