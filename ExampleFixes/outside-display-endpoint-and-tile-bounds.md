## Incorrect ASM

In guarded `func_8007764C_865FC`, the billboard scan recomputed its endpoint on each iteration. The optimizer cached the physical-address mask across both draw loops, changing matrix packet scheduling. Tile-size packets also contained bounds sixteen times the target values.

## Code changed

Declare a typed endpoint before the camera locals, assign `end = (Unk857E0Obj*)&D_80259D90[150]` before the billboard loop, and use `obj != end`. Reuse the expired scan index for the matrix/vertex payload address. Pass tile bounds `0x7C`, `0x3C`, `0x1C`, `0x0C`, `0x04`, and zero to `gDPSetTileSize`, rather than values shifted left four bits. Keep model iteration as a pointer `<` comparison.

## Correct ASM

The stack frame is again `0x128`; camera spill offsets match. The physical mask is rematerialized around the model matrix packet. The graphics region from ROM `0x86BEC` through `0x8710C` has the target instruction sequence. Tile-size words include `0x0007C07C` and `0x0103C03C`. The function remains guarded and unfinished: streaming comparison operands and the final billboard register allocation still differ (CURRENT 865).

Incorrect ASM: the billboard payload address is calculated after the previous-texture comparison, whose delay slot instead reloads the packet pointer. The mask and triangle constant also occupy registers needed by the target.

Code changed: cache `i = (s32)obj->vertices; i *= 1;` before the texture comparison and pass that word through `K0_TO_PHYS` to `gSPVertex`. The multiplication emits no instruction but preserves the integer address expression through the frontend. Use a signed-halfword raw group cache and a separate signed-byte normalized cache, declared consecutively.

Correct ASM: the texture comparison has `addiu a3,s1,0x10` in its delay slot. The final vertex packet rematerializes the physical mask and the triangle packet rematerializes `0x00020406`. The raw/normalized declarations occupy one word and preserve the 0x128 frame. The guarded function improves from CURRENT1690 to CURRENT865; remaining differences are streaming register/operand allocation and a few graphics setup instructions.
