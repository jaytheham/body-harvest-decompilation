# Exit-counter address lifetime (partial)

Incorrect ASM: `func_800ED78C_FC73C` retained the transition counter address with `LUI V1` / `ADDIU V1,0x75c4`, then used offset-zero floating loads and stores. This added one instruction and displaced later code/data addresses.

Code changed: retain the loaded `f32` progress value through the no-call exit path, refresh it after the effect callback, and increment the retained value. Express the conditional progress commit through `((PlayerInteractionScratch *)&D_801575C0)->progress`. The shared structure models the two probe coordinates, progress float, and cue word at offsets 0, 4, and 8; the existing scalar symbols remain valid aliases of those scratch fields.

Correct ASM: the guard load and conditional commit use separate `LUI AT` plus absolute-low-offset floating memory operations, removing the cached-address `ADDIU`. Native function size becomes the target `0x1924`, down from `0x1928`; the native score improves from `17094` to `15409`. This is still a partial match: floating/global register ownership and scheduling remain different, and the assembly fallback is retained.
