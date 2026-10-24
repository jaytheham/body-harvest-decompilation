`incorrect ASM`: In `func_800CE6E8_DD698`, directly creating the coordinate pointer moves `addiu s2,v0,8` before the link-sentinel branch and changes the first coordinate read to `lh t6,0(s2)`. Temporarily staging the entry address in the view pointer restores instruction order, but the first load uses `v1` and every following `t6` through `t9` request is shifted by one register.

-> `code changed`: Assign the entry address to the saved view pointer. Inside the existing first-X block, read `((volatile Unk80154318Entry *)position)->unk8`. Then rebase the pointer through `&((Unk80154318Entry *)position)->positionPair.positionVector`. Keep the later coordinates as ordinary typed vector accesses.

-> `correct ASM`: The guarded fragment is `lh t6,8(v0); lw t7,0(s0); addiu s2,v0,8; sh t6,0(t7)`. The fresh first read uses `t6`, restoring the entire scratch-register sequence without additional instructions or stores. All 454 instructions match, and both full US and EU ROM checksums pass.
