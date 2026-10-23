incorrect ASM: In `func_800D7870_E6820`, computing the effect entry after the loop pipe sync delayed its address calculation. A direct size-to-scale assignment allocated the scale to F0 and the first offset to F2, opposite the target. Copying the size through the first offset fixed the floating registers but left the position pointer in A2 instead of A3.

code changed: Compute the entry and position base before the loop pipe sync. Keep separate `copy` and `sub` position pointers (`copy = &entry->positionVector; sub = copy;`). Assign `off0 = (f32)entry->unk2; scale = off0;` before computing the six offsets. Both pointer and floating copies are optimized away.

correct ASM: Entry scaling and address calculation precede the texture packet increment. `cvt.s.w $f2,$f4` supplies the shared scale, `mul.s $f0,$f2,$f6` supplies the first offset, and `addiu $a3,$s4,8` supplies all fifteen position loads. The function and full US and EU ROMs match.
