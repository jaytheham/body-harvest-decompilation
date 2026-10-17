In `func_802DE7C4_322914`, the zero-footprint child read `if (spawnZ) {}` preserves the required helper argument schedule but allocates the joint-table base to `t2`, instead of the target `v1`.

-> Keep `spawnZ = chain.child` and the existing helper arguments, but replace `if (spawnZ) {}` with `switch (spawnZ) {}`.

-> The table setup at ROM `0x322990`, `0x322B2C`, and the trigonometric event cases uses `v1`, while the child load before the float, the event-byte store at `0x322AFC`, and the float store in the helper call delay slot remain unchanged. Fresh stock-equivalent UOPT traces show the same total saving of 21 across five occurrences rather than six: priority rises from 3.5 to 4.2, placing the base before the priority-4 pointer webs. The function remains unmatched; this change reduces its asm-differ score from 1333 to 1018.
