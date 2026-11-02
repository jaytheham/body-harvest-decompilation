`incorrect ASM`: In `func_802DC8F4_320A44`, explicit sine argument masks leave the idle-state byte in `t1` instead of `t8`, split the strength-reduced multiply by 1000 across `t3` and `t5`, and shift integer temporary registers throughout the remaining function.

-> `code changed`: Replace `sins((temp_s0->unk48 * 0x32C8) & 0xFFFF)`, `sins((temp_s0->unk48 * 1000) & 0xFFFF)`, and `sins((D_80052A8C * 1500) & 0xFFFF)` with the corresponding unmasked expressions. The existing `sins(u16)` prototype performs the required conversion.

-> `correct ASM`: The idle-state byte uses `t8`; the multiply by 1000 stays in `t2` through all shifts and additions; subsequent integer temporary registers match the target without changing the instruction sequence.

`incorrect ASM`: The attack-state transition loads `0x96` into `t3`, loads the flags into `t6`, and ORs the flags into `t5`.

-> `code changed`: Move `temp_s0->unk20 |= ALIEN_FLAG_UNKD` before `temp_s0->unk26 = 0x96; temp_s0->unk48 = 0;`.

-> `correct ASM`: The timer constant uses `t5`, the flags load uses `t3`, and the OR result uses `t6`, matching all five affected instructions.
