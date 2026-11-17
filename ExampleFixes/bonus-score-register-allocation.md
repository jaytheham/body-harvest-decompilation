`incorrect ASM`: In `func_80130BA0_13FB50`, the final bonus used `addiu v0,v1,0x1388`. The skip path also loaded and stored the final score through `v0`.

-> `code changed`: Hold the starting score in `bonusScore` while computing both bonuses through `stageScore` and `score`. Add `if (bonusScore) {}` after the two awards. IDO keeps the starting score assigned to `v0` during global coloring and removes the empty test before emission.

-> `correct ASM`: `addiu a0,v1,0x1388` initializes the final award. The skip path uses `lw a0,0x64(a0)` and `sw a0,0x30(t5)`.
