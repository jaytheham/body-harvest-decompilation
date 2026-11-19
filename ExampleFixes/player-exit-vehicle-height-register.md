`incorrect ASM` — In `func_800ED78C_FC73C`, explicitly narrowing both exit heights to `s16` produced `lw t9,0xb0(sp)` at US ROM offset `0xFD370` and used `t9` as the base of the two following velocity stores.

-> `code changed` — Keep the `s16` destination types. Use `(s32)(u64)((vehicleTypes[temp_v0_3->unk1A].unk38 * 6) + temp_v0_3->unk2)` for the vehicle height and `(s32)D_80157600.unkC + arg0->unk2` for the player height. Assignment still narrows each sum to `s16`.

-> `correct ASM` — The load becomes `lw t8,0xb0(sp)`, with `swc1 f6,0x34(t8)` and `swc1 f10,0x38(t8)` at `0xFD38C` and `0xFD390`. The same temporary register now matches the movement water-height load at `0xFD580` and the signed shift at `0xFDE3C`.
