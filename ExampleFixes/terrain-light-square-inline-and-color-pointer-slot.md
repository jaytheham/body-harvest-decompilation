`incorrect ASM`: In `func_800B2354_C1304`, naming the cached X-distance square makes the color-pointer argument use `sw/lw a1,0x48(sp)` across `sqrtf`, while the target uses `0x4C(sp)`.

-> `code changed`: Inline `dx * dx` in `sqrtf(dy * dy + dx * dx)` and retain the former square local as an unused word of frame padding.

-> `correct ASM`: The color pointer uses `sw/lw a1,0x4C(sp)` in the unchanged `0x90` frame. The function remains `NON_MATCHING`; startup scheduling and temporary registers still differ.
