Incorrect ASM: In `func_800C3300_D22B0`, the ring extent came from payload offset `0xD` instead of entry offset `0xD`, and the phase was a signed halfword instead of a byte. The distance remained double precision after adding 800, and the initial countdown was checked twice.

-> Code changed: Define typed emitter and ring payload views. Read `ring->extent` at payload offset 5 and `ring->phase` at offset 2, retaining the unsigned word conversions before float conversion. Store the biased distance in its own `f32` scalar. Use an unsigned byte countdown with one initial guard and a `do`/`while` latch.

-> Correct ASM: The loop reads `lbu ...,0xD(s8)` and `lbu v0,2(s5)`, retains the unsigned conversion branches, narrows the biased distance in the initial guard's delay slot, and has one countdown entry test.

Incorrect ASM: Named delta scalars and calculations embedded in individual vertex stores changed the floating caches. The distance conversion and both fractions stayed in saved floating registers, and interpolation operations appeared between vertex writes.

-> Code changed: Following matched frontend `func_800847E4_54C94`, keep the six interpolated coordinates in two unescaped `Vec3f` locals. Inline each point difference into both interpolations and calculate all six coordinates before writing vertices. Keep the distance accumulator separate from the initial Z delta; reuse that dead Z delta for the two scaling-helper arguments. Divide by integer literals 4 and 256, avoiding CFE's reciprocal folding for float literals. Use a consumed word index for each node address, then overwrite that index with zero on the same source line.

-> Correct ASM: The frame is `0x170`, the double distance spill is `sp+0x80`, phase stays in `f30`, and the second fraction spills to `sp+0xF4`. The first coordinate triple uses `f18/f20/f22`, and the second uses `f26/f28/f0`. All instructions from ROM `0xD23B8` through `0xD2B84` match, including the helper calls and vertex writes. The initial culling-call setup remains unmatched, so the assembly fallback is retained.

Incorrect ASM: The final sprite size used entry offset `0x1A`, the texture pointer was unmasked, and an equivalent combiner expression emitted different command bits.

-> Code changed: Read the unsigned root size from `entry->unk2`, use `K0_TO_PHYS` for the texture address, and select `gDPSetCombineLERP` with `0,0,0,SHADE,TEXEL0,0,SHADE,0` in both cycles. Pack primitive RGB with `gDPSetColor` and the matching nested shift expression.

-> Correct ASM: The size load is `lhu ...,0x431A(...)`; texture setup masks the address with `0x1FFFFFFF`; the combine words are `0xFCFF99FF` and `0xFF327F3F`; primitive color loads occur at payload offsets 7, 6, and 8.

`incorrect ASM`: Reusing `distZ` for the initial camera delta and the later ring-scale scratch keeps the initial delta in callee-saved `f20`; the target uses caller-saved `f14` for its subtraction and two multiply operands.

-> `code changed`: Remove the initial `distZ` assignment. Spell the Z delta directly in both operands of the final squared-distance product passed to `sqrtf`, retaining the later `distZ` scale scratch.

-> `correct ASM`: IDO computes the repeated delta once in `f14`. Every floating-point register and every instruction after the culling call now matches, while the frame, named homes, and main rendering loop remain unchanged. This remains a NON_MATCHING checkpoint: the initial culling setup still differs (score 2261 to 2246).