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

`incorrect ASM` -> After `sll t7,a1,16` at `0x32248C`, the linked draft calculates the Z output address in `t2` and stores it before `sra a1,t7,16`. The second effect has the same scheduling difference. UGEN assigns the first call's X, Y, and Z addresses to `t9`, `t1`, and `t2`. The instrumented run produces the same binary assembly stream as the native build.

`code changed` -> As controls, cache the narrowed X input before the call, split the three output addresses across source lines, and pass the addresses of equivalent scalar or union members. These variants preserve the output slots and leave eight differing words in each call window. The native compiler listing already finishes the X narrowing before it computes the output addresses.

`correct ASM` -> At `0x322490` the target uses `sra a1,t7,16` followed by `addiu t7,sp,0x5C`. Both instructions use `t7`, which creates the dependency absent from the draft. The target's second call likewise reuses `t8`. Matching these registers requires changing the temporaries allocated by UGEN or the register reuse established during final assembly.

`incorrect ASM` -> The second effect's status byte loads into `t4` at `0x322460` and `0x322504`. The branch at `0x322510` also reads `t4`.

`code changed` -> Read the first effect's X coordinate through `sp44` and keep its Y and Z reads through `effectNode`. Both names refer to the same joint.

`correct ASM` -> The two `lb` instructions and the following `beq` use `t6` at the target offsets. The linked draft falls from 204 to 202 differing words and from score 2016 to 2006.
