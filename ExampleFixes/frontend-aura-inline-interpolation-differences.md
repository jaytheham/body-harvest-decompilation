Incorrect ASM: In `func_800847E4_54C94`, named X/Y difference locals received caller floating registers before the interpolated coordinates. All six coordinates occupied saved registers, the first interpolation fraction spilled to `sp+0x100`, and the loop gained a store/reload pair.

-> Code changed: Inline `(outB.x - outA.x)` and `(outB.y - outA.y)` into both interpolations, as already done for Z. Keep the six coordinate assignments before the fade branch. For example, replace `camDx = outB.x - outA.x; point0.x = camDx * t0 + outA.x; point1.x = camDx * t1 + outA.x;` with `point0.x = (outB.x - outA.x) * t0 + outA.x; point1.x = (outB.x - outA.x) * t1 + outA.x;`.

-> Correct ASM: IDO still shares all three differences, but keeps `t0` in `f30` across the quadrant helper calls. The interpolation sequence uses differences `f0/f2/f22`, base coordinates `f12/f14/f28`, and results `f16/f18/f20/f24/f26/f0`, matching the complete target floating-point sequence at ROM `0x5509C` through `0x55100`. The completed function and full US ROM verify exactly.

Incorrect ASM: The linked-list index was folded into the node address, and IDO retained or spilled the wrong values across the scaling helpers. Initial payload, node, and integer scratch registers differed.

-> Code changed: Use a word-sized index for both the initial head and each next link, with a separate signed byte quadrant selector. On the same line as each `entry840 = &D_800DE840[headIndex]`, overwrite the consumed index with zero. Keep the payload-address identity masks.

-> Correct ASM: The head and next-link loads use `v0`, the whole node stays in `s6`, and the initial and per-segment payload addresses use `s3`. All integer instructions through vertex generation match.

Incorrect ASM: The countdown cache used `v1` instead of `a2`. Extending only the fade-constant expression's lifetime recovered `a2` but moved the whole node from `s6` to `s8`.

-> Code changed: After `remaining--`, retain the discarded condition `if (D_800DE0BB * 20 + entry840->unk0) {}` on the same source line.

-> Correct ASM: No condition instructions are emitted. The fade constant retains its allocation priority, the node keeps `s6`, and the latch uses `lbu a2,0xf7(sp); addiu a2,a2,-1; andi t8,a2,0xff`.

Incorrect ASM: Every instruction matched except two parent-pointer spill stores and one reload at `sp+0x94`; the target uses `sp+0x98`. The private IDO stack trace showed a 224-byte CFE local area followed by the first four-byte spill.

-> Code changed: Remove the loop-local `f32 scale`. Use `point0.z` for the scale and both scaling-helper arguments, then overwrite it with the interpolated Z coordinate. Both lifetimes already use `f20`.

-> Correct ASM: The CFE local area loses four bytes, the parent-pointer spill moves to `sp+0x98`, and the double invariant remains at `sp+0x88` because of alignment. The function diff is zero and `tools/make.ps1` reports `build/bh.us.z64: OK`.
