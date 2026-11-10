`incorrect ASM` -> In `func_802DE7C4_322914`, reading all three coordinates through `nodeB` in cases 5 and 6 put the case-6 joint pointer in `t2` at ROM offset `0x322D90`. In the earlier joint traversal, the pointers at `0x322A2C` and `0x322A8C` used `t4` and `ra`.

`code changed` -> Keep `nodeB->unk0` and `nodeB->unk4` in both calls. Read the middle coordinate directly as `D_8014DD50[chain.joints[5]].unk2` in case 5 and `D_8014DD50[chain.joints[11]].unk2` in case 6.

`correct ASM` -> The traversal uses `t2` at `0x322A2C` and `t3` at `0x322A8C`. Case 6 reuses `t3` at `0x322D90` and for all three coordinate loads. Both cases match word for word. The complete routine still differs in 19 register-only instruction words after the earlier word-argument cache fix.
