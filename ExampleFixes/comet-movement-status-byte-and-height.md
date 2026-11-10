`incorrect ASM` -> In `func_802DE0F4_322244`, the byte passed to the attack-state call and copied into the actor state used `sb/lbu` at `sp+0x5B`. The target uses `sp+0x4F`.

`code changed` -> Declare `sp4F` after the two joint pointers and the word argument cache. Keep those three word-sized declarations together.

`correct ASM` -> The mode stores and reloads use `sp+0x4F` with the same `0xA8` frame. The pointer homes and instruction order still differ elsewhere in the function.

`incorrect ASM` -> The attack height check at `0x322724` and `0x322728` put the actor's height in `v1` and the player's height in `v0`.

`code changed` -> Use `alienInstances[arg0].unk2` directly for both bounds of the height predicate. Keep the existing actor pointer for the other accesses.

`correct ASM` -> The actor height loads into `v0` and the player height into `v1`. Both comparisons use those target roles.

`incorrect ASM` -> At `0x322298`, the D link loads into `t6` and the C link loads into `t7`. The following stores use those reversed registers.

`code changed` -> Assign the C link to `spA2` before assigning the D link to `spA0`. IDO still schedules the D load first because the next lookup depends on it.

`correct ASM` -> `lb t7,0xd(v1)` and `lb t6,0xc(v1)` feed `sh t7,0xa0(sp)` and `sh t6,0xa2(sp)`. All five instructions from `0x322298` through `0x3222A8` match, including the unchanged D-link reload.

`incorrect ASM` -> Placing the two pointer locals and the word argument cache after the status byte can put their stores at caller-relative offsets `-104`, `-100`, and `-108`. In this trial the frame grows to `0xC0`, and the stores become `sp+0x58`, `sp+0x5C`, and `sp+0x54` instead of the target `sp+0x40`, `sp+0x44`, and `sp+0x3C`.

`code changed` -> Restore the pointer declarations above the byte and leave the argument cache eligible for an automatic spill. The private IDO trace for procedure 80 shows that the explicit layout raised the initial local reserve from 96 to 114 bytes and still requested three four-byte spill slots. Its emitted local area is 132 bytes versus 112 for the baseline.

`correct ASM` -> The baseline restores the target `0xA8` frame and the byte at `sp+0x4F`. The two joint pointers still use their declared homes at `sp+0x50` and `sp+0x54`, although the allocator reserves caller-relative slots `-100` and `-104` during the same compilation.

`incorrect ASM` -> When both terrain effects copy their joint pointer into `effectNode`, the first flag test after the effects uses `lw t4,0x20(s0)`, `andi t7,t4,0x7000`, and `bnezl t7`.

`code changed` -> Read the second effect's joint fields directly through `sp40`. Keep `effectNode` for the first effect.

`correct ASM` -> The flag test uses `lw t7,0x20(s0)`, `andi t8,t7,0x7000`, and `bnezl t8`, matching the target at `0x3225C0`, `0x3225C8`, and `0x3225CC`. The frame and structural differences are unchanged. Across the function, the differing word count falls from 209 to 204 and the assembly diff score falls from 2046 to 2016.
