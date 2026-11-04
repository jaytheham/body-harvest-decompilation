incorrect ASM: In `func_800F7790_106740`, the third darkened color is read with `lh a3,0xe0(sp)` and written with `sb a3,0xe(t8)` instead of using T0. The frame is already `0x138` and the first 124 instructions match.

-> code changed: Initialize the existing signed-word offset scratch locals in their declarations: `s32 xTri = 0;` and `s32 zTri = 0;`. Keep all later assignments and uses unchanged. No discarded condition or additional local is needed.

-> correct ASM: The color pair becomes `lh t0,0xe0(sp)` and `sb t0,0xe(t8)`, with no extra instructions and the same frame and stack homes. The enabled function score improves from 8565 to 8395. This is a partial checkpoint: palette-root allocation, spill/reload placement, and geometry scheduling still differ, so the NON_MATCHING wrapper remains.
