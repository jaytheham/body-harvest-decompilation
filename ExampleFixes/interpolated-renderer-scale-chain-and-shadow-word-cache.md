Incorrect ASM: `func_800C6D80_D5D30` used a `0x180` frame, and its transform vectors were 32 bytes above their target homes. Named node and payload pointers consumed unnecessary source homes.

-> Code changed: Use the existing typed interpolation payload layouts, retaining common root and motion addresses as repeated expressions rather than additional named pointer locals. Keep the motion address's unsigned identity mask so IDO materializes the payload address instead of folding its offset into the node loads. Place the three retained pointer homes and one padding word before the vectors. Pack the signed halfword shape and motion indices immediately before the first two six-byte vectors, filling their alignment holes. Keep distance and shadow fade in separate float locals.

-> Correct ASM: The frame is `0x170`; scale, spin, rotation, and position start at `sp+0x158`, `0x150`, `0x148`, and `0x140`. Shadow colors and coordinates start at `sp+0x13C` and `0x138`. The motion payload is formed with `addiu s3,s0,8` immediately after the distance helper. No additional pointer spill homes are emitted.

Incorrect ASM: A named word width occupied `v0` during optimization and became an assembler-coalesced `t7` result. The array base and stride used `t1/t2`, and the final scale-X store preceded the culling-radius mask.

-> Code changed: Retain a distinct signed halfword shape index. Use a union with signed-halfword array and transform-vector views, assigning `scale.array[0] = scale.array[1] = scale.array[2] = width_expression`. Read the culling radius through the vector view, then apply the existing mask. Remove the separate word width local.

-> Correct ASM: The loop index uses `t1`, the shape index `t0`, the shared width `t2`, the array base `t3`, and the stride `t4`. At ROM `0xD6030/0xD6034`, `andi a2,t2,0xFFFF` precedes the final scale-X `sh`.

Incorrect ASM: The distance sum emitted `add.s f12,f16,f20`, and the two color commands loaded blue before red and green.

-> Code changed: Accumulate Z squared with `distance += z_squared` before calling `sqrtf(distance)`. Pack each color with `gDPSetColor` using `(blue_shift | (green_shift | red_shift)) | alpha_shift`, retaining `_SHIFTL(alpha,0,8)`.

-> Correct ASM: The distance helper receives `add.s f12,f20,f16`. Both color commands read red, green, and blue in that order and preserve the target shifts, OR operands, and subsequent integer register sequence.

Incorrect ASM: Capturing the shadow size in a named word gave the pop-matrix command `a3`, the size `a2`, and the initial narrowed radius `v1`. Eleven instruction words differed.

-> Code changed: Read the root size directly in the outer comparison and the signed-halfword radius assignment. Keep the vacated prefix word only as explicit padding for the transform homes. A branch-local word capture still produced the same eleven differences and is unnecessary.

-> Correct ASM: The pop command uses `a2`, the shared size expression `a3`, and the narrowed radius `a2`. The signed-halfword normalization remains, and the function diff becomes zero.

Incorrect ASM: A literal `255.0` generated another constant after the four remaining placeholder slots, so the renderer loaded RAM `0x80143FF8` instead of RAM `0x80143FD8`. Reading the named array directly prevented the required invariant load before the loop.

-> Code changed: Replace the three later `func_800CA1B0_D9160` divisor-array references with literal `255.0` and delete their three placeholders. Verify that later function and the complete fallback ROM first. Then remove this renderer's `D_80143FD8_152F88` placeholder when enabling its C implementation.

-> Correct ASM: The renderer's generated literal occupies `0x80143FD8`, and the later function's three generated literals occupy `0x80143FE0`, `0x80143FE8`, and `0x80143FF0`. Both functions have zero diffs, and the native full build reports `build/bh.us.z64: OK`.
