`func_802DF290_3233E0`: the final cosine argument is produced as `mfc1 t8,f4; jal coss; andi a0,t8,0xffff`, omitting the target's separate masked copy.

-> Keep the float-to-integer result in the existing pitch temporary and retain an integer use before narrowing it: `sp28 = (s32)((f32)(timer << 17) / 30.0f); if (sp28) {}` followed by `coss(sp28 & 0xFFFF)`. The empty integer test emits no instructions but changes the optimizer's argument allocation.

-> `mfc1 a0,f4; nop; andi t8,a0,0xffff; jal coss; move a0,t8`. This restores the target instruction shape and the following scale-store/reload sequence; scratch-register identities still depend on the surrounding function.

`func_802DF290_3233E0`: reusing the normalized-yaw word for terrain height produces `mfc1 t0,f6` and reserves three shared temporary registers before the stride constant.

-> Reuse the expired raw random-pitch word for terrain height instead. Preserve the separate normalized-yaw word for the level index and angle calls.

-> The height conversion uses `mfc1 v1,f6`, and the stride constant moves from `t3` to `t2` without changing the frame or adding a spill. Other allocation and scheduling differences remain.

`func_802DF290_3233E0`: the shared `32768.0` divisor occupies `f2` and the radius occupies `f0`, reversing the target constant initialization and division operands.

-> Retain `if ((f64)timer + 32768.0) {}` in the interpolation branch before storing the timer snapshot. This side-effect-free use changes the allocator priority of the already shared divisor. Larger repeated-use probes are unnecessary once the radius is an inline literal.

-> The divisor uses `f0` and the radius uses `f2`; the conditional emits no addition or comparison and the frame remains `0x58`. The surrounding integer scheduling and allocation still require matching.

Particle coordinate loads in `func_802DF290_3233E0` used `t0` for `D_802E7C60` and `t1` for `D_802E7C64`; the target uses `t1` and `v1` respectively.

-> Add `if ((f64)D_802E7C64 + 0.0) {}` before the event condition chain. IDO eliminates this expression from the emitted instructions while its earlier formation changes the later coordinate allocation.

-> The particle loads use `lw t1, D_802E7C60` and `lw v1, D_802E7C64`, matching those target operands. The function's remaining scheduling, other register allocation, and halfword homes still differ; the full function is not yet matched.

The raw words and angle spills in `func_802DF290_3233E0` already matched, but all seven random/trig halfwords were two bytes too high. Adding a halfword gap after `sp40` alone enlarged the frame from `0x58` to `0x60` and shifted the word homes too.

-> Add `s16 pad3E` after `sp40` and move the fifth `coss(sp28)` out of the effect argument into the existing word scratch, renamed `pitchCos`. Use `pitchCos` in the Z floating expression. Both changes are required together: the declared gap moves the halfwords, while eliminating the nested-call temporary avoids the frame growth.

-> The frame stays `0x58`; the raw words stay at `sp+0x44/0x40`, the angle spills stay at `sp+0x2C/0x28`, random shorts use `sp+0x30/0x32/0x34`, and trig shorts use `sp+0x36/0x38/0x3A/0x3C`. No extra cosine-result copy is emitted. The function remains unmatched in register allocation and scheduling.

The Comet spawn setup emitted `lui at,D_802E7C64` at ROM `0x3235B0`, loaded `0x6E` at `0x3235C8`, and stored the final stack argument before moving the narrowed X/Z arguments. The target loads `0x6E` at `0x3235B0` and stores that stack argument at `0x3235E0`.

-> Keep the cached-height assignment and the following spawn assignment on the same source line: `D_802E7C64 = sp40; D_802E7C5A = func_800D0DE4_DFD94(...);`. Leave the height calculation and the two coordinate reloads on separate lines. A 16-case statement-boundary audit isolated this one boundary as sufficient; comma-expression spelling produced the same result and was discarded in favor of plain statements.

-> The `0x6E` load moves to `0x3235B0`, and its stack store moves to `0x3235E0`, matching the target positions. The function score improves from 2775 to 2520. A remaining `0xFF` load/global-address `lui` pair is reversed, and the registers still differ; this is not a full function match.

In the particle call, the Z word load and several conversions remained after the first remainder's divide checks. Target ROM `0x323748/0x32374C` loads Z before those checks, and `0x323740` adjusts X by `0x1E`.

-> After the fifth cosine, snapshot `D_802E7C68` into the existing `timer` word. Use this snapshot for both the third integer coordinate and the final floating Z addend. Keep `timer = D_802E7C68;` and `func_800D16BC_E066C(...)` on the same source line. Reusing the consumed `sp40` angle also improves the schedule, but using `timer` retains more target coordinate-register choices.

-> X adjustment occurs at `0x323740`, the trig `mtc1` at `0x323744`, and the Z `lui/lw` at `0x323748/0x32374C`. The following divide-check and floating-conversion sequence now aligns structurally with the target. Score improves 2520 -> 1240. General register allocation and the final timer branch still differ.

The final timer delta used `t0` (or `a0` with an independent scratch), and `lui/addiu` for the true branch's scale address appeared before the conditional branch. The target uses `v0` for the delta and creates the scale address only in the true branch.

-> Preserve the Comet caller's void-return view of `func_800D16BC_E066C` through `COMET_PARTICLE_VOID_RETURN` around the common-header include. Keep the default index-returning declaration for other translation units, including the caller that uses the returned effect index. Reuse `pitchCos` for the final timer delta after the particle call, independently of the Z-coordinate scratch. A controlled optimizer-stream comparison changed only the call result dtype (`Jdt` versus `Pdt`) with the same independent timer lifetime: the timer allocation changed from `a0` to `v0`. An explicit `(void)` result cast did not change the call dtype; a function-pointer cast introduced an unwanted indirect call and was discarded.

-> The direct `jal` remains at `0x3238B0`; the timer subtraction moves into the branch delay slot at `0x3238C8` in `v0`, followed by the true branch's scale-address `lui/addiu` at `0x3238CC/0x3238D0`. Score improves 1240 -> 955, and the full ROM has no differences outside this function. Remaining register choices and the spawn's adjacent `li 0xFF` / `lui` pair still need matching.

The spawn's adjacent `li 0xFF` and height-address `lui` were reversed, and temporary registers differed throughout the particle calculation. Merely assigning the shifted terrain result to a local produced identical assembly.

-> Assign the shifted terrain result to the consumed `sp2C` scratch, retain an integer use with `if (sp2C) {}`, and calculate the adjusted height into `sp40`. Keep the subsequent height store and spawn assignment on the same source line.

-> The target's `lui` / `li 0xFF` order and temporary-register sequence through the particle call match. The frame, stack homes and floating registers remain exact. Score improves 955 -> 410; some integer register choices remain unmatched.

The first scale call used `mflo t3; ...; andi a1,t3,0xFFFF`, and later temporary-register choices differed from the target's `mflo t9; ...; andi a1,t9,0xFFFF`.

-> Remove the explicit `& 0xFFFF` from both scale arguments and let the existing `u16` parameter of `func_800D0FE0_DFF90` narrow the quotient, as in the matched neighboring function.

-> The quotient uses `t9`, its narrowing stays in the call delay slot, and all subsequent instructions and registers match. Score improves 410 -> 190. Only earlier integer register choices remain unmatched.

The spawn X snapshot used `v0`, and the raw terrain shift used `t1`; the target uses `t1` for X and `v1` for the shift. Passing the global X directly by itself instead narrowed its load to `lh`.

-> Keep the Z snapshot, replace the following X snapshot with `if ((f64)D_802E7C60 + 0.0) {}`, and pass `D_802E7C60` directly as the spawn's X argument. Keep the height store and spawn assignment on the same line.

-> X still uses a word load, now in `t1`, and the raw terrain shift uses `v1`. Instruction order, frame, stack homes and floating registers remain exact. Score improves 190 -> 180 and the full ROM has 33 differing bytes, all inside this function. The adjusted height result now uses `v0` instead of the target's `v1`, so this remains a partial match.

The level call loaded `currentLevel` through `a3`, then subtracted into `a0`. Simply inlining `(currentLevel - 1) & 0xFF` fixed that load but removed the target's argument move.

-> Remove the level-index temporary and pass `(u8)(currentLevel - 1)` directly. Keep the helper's existing `u8` parameter declaration.

-> The complete level-call sequence matches: `lw a0; addiu a0,a0,-1; andi t9,a0,0xFF; move a0,t9`. Score improves 180 -> 160, with 30 differing ROM bytes left in this function.

The adjusted height used `mfc1 v0`, `sll a1,v0,16`, and `sw v0,D_802E7C64`, where the target uses `v1` in all three places.

-> Reuse `sp2C` for the adjusted height after its raw terrain value has been consumed, and use `sp2C` for both the height store and spawn argument. This works after removing its earlier level-index role.

-> The adjusted-height result and its two uses match in `v1`. Score improves 160 -> 155 and differing bytes fall 30 -> 29. The raw terrain shift now uses `a0` instead of `v1`, so the whole function remains unmatched.

The particle calculation used `t2` for the divisor 15 and `t0` for Z; the target uses `t0` for the divisor and `t2` for Z. The raw terrain shift also used `a0` instead of `v1`.

-> Reuse `sp2C` for the initial alien Z cache before overwriting it with the terrain result. After the fifth cosine consumes the pitch angle, reuse `sp40` for the particle Z snapshot and both Z arguments. Use `sp40` for the earlier spawn Z snapshot too, retaining the established statement boundaries.

-> The entire particle calculation matches, including `li t0,15`, the divides, and `lw t2,D_802E7C68`; the terrain `sra v1,v0,8` and following `mtc1 v1` match too. Score improves 155 -> 85, with 17 differing bytes in 16 instruction words, all in the earlier spawn setup. The function remains unmatched.

With the initial alien Z cache in `timer` and both later Z snapshots in `sp40`, the raw terrain conversion uses `a0` while the adjusted-height result uses the target `v1`.

-> Stage the unshifted return first: `sp2C = func_800B84D0_C7480(...); if (sp2C) {}` followed by `sp2C >>= 8;`. Reuse `sp2C` for the adjusted height. The integer use must precede the shift for this form; using only the shifted value's empty test does not couple these lifetimes the same way.

-> Both `sra v1,v0,8; mtc1 v1,f16` and `mfc1 v1,f6; ...; sw v1,D_802E7C64` match. This variant improves 170 -> 145 while preserving all opcode positions, floating registers and stack homes. The X coordinate and shared constants still occupy opposite registers, so this is a diagnostic alternative to the better overall score-85 version, not a complete function match.
