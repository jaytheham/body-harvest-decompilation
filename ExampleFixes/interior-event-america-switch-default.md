`incorrect ASM`: In `func_800784B8_160578`, the America room test used a nested `if`. The closest draft kept the Comet guard's branch and delay slot by adding a discarded float conversion, which selected V0 for the level load and shifted the sound literals to F6 and F8. Using an unsigned word view alone selected T8 but hoisted the interior-ID address ahead of a branch-likely instruction.

-> `code changed`: Express the America room test as a one-case switch with an explicit `default: break;`. Use the direct `currentLevel == LEVEL_COMET` comparison and remove the discarded conversion and empty loop.

-> `correct ASM`: The Comet guard emits `lui t8; lw t8; li at,5; bne t8,at` with the interior-ID `lui v0` in the delay slot. The two sound literal loads use F4 and F6. The function diff scores 0 and both ROM checksums pass.
