`incorrect ASM`

`func_80080190_168250` duplicated the collision recovery block for left and right movement, reloaded independent coordinate temporaries, and emitted `mul.s` with `0.125` for the smoothing steps.

-> `code changed`

Combine both directional collision tests with `||`, sharing one recovery block. Keep the original X coordinate in one float local, reuse the dead distance parameter for the new X coordinate, and divide both smoothing deltas by a named `f32 divisor = 8.0f`.

-> `correct ASM`

The first helper result branches with `bnez v0` to the shared recovery block; the second branches with `beqz v0` past it. The old coordinate reloads at `sp+0x74`, both comparisons use `$f2`, and the smoothing operations emit `div.s` with the `8.0f` divisor. This matches the target control flow; the full function still has a residual quotient-register mismatch.
