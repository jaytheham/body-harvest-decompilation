`incorrect ASM` -> In `func_802DE7C4_322914`, reading all three coordinates through `nodeB` in cases 5 and 6 put the case-6 joint pointer in `t2` at ROM offset `0x322D90`. In the earlier joint traversal, the pointers at `0x322A2C` and `0x322A8C` used `t4` and `ra`.

`code changed` -> Keep `nodeB->unk0` and `nodeB->unk4` in both calls. Read the middle coordinate directly as `D_8014DD50[chain.joints[5]].unk2` in case 5 and `D_8014DD50[chain.joints[11]].unk2` in case 6.

`correct ASM` -> The traversal uses `t2` at `0x322A2C` and `t3` at `0x322A8C`. Case 6 reuses `t3` at `0x322D90` and for all three coordinate loads. Both cases match word for word. The complete routine still differs in 19 register-only instruction words after the earlier word-argument cache fix.

`incorrect ASM` -> The guarded traversal loads the raw root byte into `v0` at `0x3229A0` and narrows the root through `t0` at `0x3229AC`. The ROM uses `t5` and `ra`.

`code changed` -> As an allocation control, insert two consecutive `if (nodeC != &D_8014DD50[spawnY]) {}` tests after `spawnY = nodeC->unkD` and before storing `chain.joints[1]`.

`correct ASM` -> The raw root load uses `t5` and the shift pair and copy use `ra`, matching the ROM at `0x3229A0`, `0x3229AC`, `0x3229B0`, and `0x3229C0`. The control also spills the child word at `sp+0xAC`, grows the frame from `0xF0` to `0xF8`, and moves the table base from `v1` to `t3`. A single empty test of `rootIndex != spawnY` also selects `t5` while preserving the instruction count. It leaves the narrowing in `t0` and still gives the `0xF8` frame and the `t3` table base. The guarded draft retains the `0xF0` frame and has 19 register-only differences.
