`incorrect ASM`: In `func_800B1028_BFFD8`, the outer Z-bound reloads use `t7`/`t8` instead of `t9`/`t6`. In both sub-wall clips, the Y product reads the saved quotient alias in `f2` instead of the original quotient in `f0`.

-> `code changed`: Store `D_8014FD30.main.maxZ` or `.minZ` through `arg5` before updating the local X and Y deltas. In the sub-wall loop, remove the `temp_f12` product assignment and repeat `var_t1 * temp_f2` directly in the Z-coordinate sum and final Z-delta assignment; repeat `var_t0 * temp_f2` directly for the X-coordinate sum and final X-delta assignment. Preserve the separate `outerScale` local and existing discarded lifetime observations.

-> `correct ASM`: The bound reloads/stores use `lh t9,6(t4); sw t9,0(s3)` and `lh t6,2(t4); sw t6,0(s3)`. The sub-wall Y products use `mul.s f0,f10,f0`, followed by the remaining-delta products using `f2`. The complete function diff is zero and the native US ROM checksum reports `build/bh.us.z64: OK`.
