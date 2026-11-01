## Incorrect ASM

In guarded `func_8007764C_865FC`, the billboard scan recomputed its endpoint on each iteration. The optimizer cached the physical-address mask across both draw loops, changing matrix packet scheduling. Tile-size packets also contained bounds sixteen times the target values.

## Code changed

Declare a typed endpoint before the camera locals, assign `end = (Unk857E0Obj*)&D_80259D90[150]` before the billboard loop, and use `obj != end`. Reuse the expired scan index for the matrix/vertex payload address. Pass tile bounds `0x7C`, `0x3C`, `0x1C`, `0x0C`, `0x04`, and zero to `gDPSetTileSize`, rather than values shifted left four bits. Keep model iteration as a pointer `<` comparison.

## Correct ASM

The stack frame is again `0x128`; camera spill offsets match. The physical mask is rematerialized around the model matrix packet. The graphics region from ROM `0x86BEC` through `0x8710C` has the target instruction sequence. Tile-size words include `0x0007C07C` and `0x0103C03C`. The function remains guarded and unfinished: streaming comparison operands and the final billboard register allocation still differ (CURRENT 1690).
