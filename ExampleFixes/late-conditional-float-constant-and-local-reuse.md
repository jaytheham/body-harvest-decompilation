# Preserve a constant floating multiply with a late conditional fold

Matched `func_8007F188_4F638` in `src.us/overlay_gameplay/frontend/40720.c` with IDO 5.3, -O2 -mips2 -32.

The final mismatch was the operand order of `mul.s f4,f12,f2`: the target multiplies one by the Z sine. Writing `1.0f * sine` removes the multiply too early. Writing `sine / 1.0f` preserves a multiply after reciprocal lowering, but places the sine first.

Reuse a float whose previous value is dead and assign the same constant in both arms of a conditional:

```c
if (angle) {
    sinX = 1.0f;
} else {
    sinX = 1.0f;
}
result->x = 0.0f - (sinX * sinZ);
```

The conditional disappears later while the multiply retains the constant as its first operand. Reusing the existing float avoids the extra four-byte local home and enlarged frame caused by a new `one` variable. In this function the resulting frame is 0x50 and the entire ROM matches.

The first angle parameter is s16, consistent with its callers; reusing it for the s16 cosine result reproduces the target's store/load behavior. An explicit zero case for the distance retains the otherwise dead move in the target.

The basis uses array views of its Vec3f storage. Converting the entire basis to a float array preserved the instruction sequence but changed floating register assignment. Keep representation changes separate from the late constant-fold fix and check the full ROM after cleanup.

## Partial linked-vehicle response: loop scope prevents a saved constant

After 20 variants, `func_80103760_112710` is parked as NON_MATCHING with score 3413, improved from 15771. Its frame is now the target 0x78; it is not an exact match. A late `if (1)` around the point-height do/while prevents IDO from hoisting 15 into saved f20, removing the extra floating save/restore and restoring the earlier FPR cycle. Write the two countdown tests as `while (i--)`, using a word counter, to preserve the target old-value copy and decrement delay slot. Explicit `!= 0` produces sltu instead.

The mass numerator converts unsigned, but the sum converts signed. Read the unsigned mass into a word, assign the signed sum to ratio first, compute inverse distance, then divide the numerator by ratio. This removes the unwanted second unsigned-conversion adjustment. Reuse dx/dy/dz for scaled offsets; separate x1/y1/z1 locals change register lifetimes. Cache the impulse and damping doubles in block locals to preserve one constant load for each three-component calculation. Multiply the distance limit by integer 2 to retain mul.s rather than add.s. Eight unused word declarations before the first float expand the frame; putting them after the last used local or before an unspilled counter has no effect. Remaining differences concentrate on the ratio conversion/store, coordinate slots, and saved-register ordering. The candidate stays wrapped and the full ROM passes.

## Vehicle spawn reset: preserved conversions and postdecrement bounds

The guarded `func_80112A98_121A48` improved from 12555 to 860 after 32 valid compiled variants. Its retained candidate has the target 320 instructions, 0x78 frame, and height output at sp+0x5e, but saved registers and initialization scheduling still differ. It is not matched.

The first loop tests the old spawn cursor against entry 2, then decrements it. This processes entry 1 as well: use `do ... while ((u32)spawnData-- >= (u32)&D_80259490[2])`, with vehicle decrement in the body. Unsigned comparison spelling keeps SLTU in v0. The second loop uses a word index: assign the count to i, guard with `if (i-- > 0)`, then loop with `while (i-- > 0)`. Testing the global count separately loses the initial SLT and changes the saved index allocation.

Preserve float conversion before double conversion for both percentages and the shifted fuel capacity. Read hit points inline through `(f32)(u32)` to retain unsigned conversion adjustment and the target temporary-register cycle. Reuse function-scope reset locals across both paths, remove the separate hit-point temporary, and declare the height halfword last to restore frame and output slot.

Writing heading as `-spawnData->unk8 + 0x4000` retains two local LI instructions and prevents hoisting 0x4000 into a saved register. `0x4000 - spawnData->unk8` hoists it, takes the height-pointer register, and adds other scheduling differences. Conditional loop scopes did not fix this; an explicit cached double divisor also worsened the candidate. Pointer declaration/initialization order, explicit end pointers, separate first-branch pointer scopes, word X reuse, and function-scope range declarations did not resolve the remaining register rotation. No new files were created.

Vehicle-reset follow-up trials 33..41 did not improve 860. Moving the vehicle decrement into a comma latch retains 860; decrementing only on a continued iteration worsens it to 1745, and expressing the old cursor through the already-decremented cursor plus one worsens it to 1920. Reusing word Z for the building index retains 860. Reusing the first-branch vehicle pointer for the second-branch indexed pointer reaches 873 and moves height to 0x5a. Register-qualified vehicle, spawn, and Z locals each retain 860. Reusing the expired range word as the indexed vehicle address also retains 860 and is not retained. The guarded source remains unchanged and the full ROM verifies OK.


### Vehicle reset: safe cast cleanup and first-path parameter reuse

Eleven additional compiled variants, plus a baseline build, leave `func_80112A98_121A48` at score 860. Reusing the unused first-path X parameter for X scores 2155, the Z parameter for Z scores 2116, and both score 3341. Explicitly caching the end cursor address in the first-path-unused word index, X parameter, or Z parameter leaves 860 unchanged. A native typed-pointer cursor comparison scores 880, so retain the existing unsigned comparison.

The following cleanups individually and together retain score 860: remove explicit f64 casts of already float-converted operands (the double divisor or other double operand supplies promotion), remove explicit s16 casts on floating results assigned to short fields, and remove explicit s16 casts on coordinates assigned to short locals. Keep the f32 conversions and the unsigned hit-point conversion; those produce target instructions. Only these safe cast cleanups are retained under NON_MATCHING. A preliminary parameter-reuse edit accidentally changed a local declaration to duplicate a parameter and failed compilation; it was corrected, excluded from the valid-build count, and no stale diff was used. The final wrapped ROM verifies `build/bh.us.z64: OK`.
