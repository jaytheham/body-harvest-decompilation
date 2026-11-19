`incorrect ASM` -> In `func_802DE7C4_322914`, `spawnX + D_8014DD50[chain.joints[5]].unk2` in case 5 emitted `addu t7,t6,t1` at ROM offset `0x322C94`. Case 6 emitted `addu t8,t7,t1` at `0x322DC0`.

`code changed` -> Keep the direct joint array access and write the first Y addition as `spawnX - (0 - D_8014DD50[chain.joints[5]].unk2)`. Apply the same form to `chain.joints[11]` in case 6.

`correct ASM` -> IDO folds the subtraction into `addu t7,t1,t6` and `addu t8,t1,t7`. Both instruction words match the target, and all other emitted words are identical to the prior C build.
