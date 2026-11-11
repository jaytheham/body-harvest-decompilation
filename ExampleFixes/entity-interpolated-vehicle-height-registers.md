`incorrect ASM`: In `func_80126B80_135B30`, the interpolated vehicle height uses `a1` and the vehicle's base Y uses `a0` in the height comparisons.

-> `code changed`: Reuse `scratch` for the interpolated height and the expired Y local for the vehicle's base height. Use the same explicit word conversion in the upper-height addition as in the exact-hit case.

-> `correct ASM`: The interpolated height uses `v0`, the base height uses `v1`, and both height comparisons match the ROM. The order of the distance load and hit-kind store after the comparisons still differs.
