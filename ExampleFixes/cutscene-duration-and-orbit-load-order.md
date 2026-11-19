`incorrect ASM` at US offset `0xFF8F0` in `func_800F066C_FF61C`. IDO emitted the current-frame `lui v0` before the duration `lui t3`.

-> `code changed`. Declare `D_80157F64` as `u32` and compare `D_80157F64 == D_80157F54` directly. Convert the duration to `f32` without an intermediate cast to `u32`.

-> `correct ASM`. The duration `lui t3` precedes the frame `lui v0`. The subsequent loads remain `lw v0,0x7f54(v0)` and `lw t3,0x7f64(t3)`.

`incorrect ASM` at US offset `0xFFB10`. Loading `z = entry->cameraZ` and subtracting `targetZ` in the store expression used `lh a2,4(v1)`, then `subu t6,a2,s1` and `sh t6,0x7fc4(at)`.

-> `code changed`. Compute `z = entry->cameraZ - targetZ` alongside the X and Y offsets, then store `D_80157FC4 = z` alongside the other two stores.

-> `correct ASM`. The same three instructions use `lh t6,4(v1)`, `subu t8,t6,s1` and `sh t8,0x7fc4(at)`.

`incorrect ASM` at US offset `0xFFC34`. The three orbit offset loads were assigned separate lines in Z, Y, X order. The assembler placed `lui t4` for the target X address before the orbit address instructions.

-> `code changed`. Group the X, Y and Z orbit offset assignments in that order on the same line. Use `#line 100` to assign the group a lower line number than the neighboring compiler-generated target X address calculation.

-> `correct ASM`. The address instructions are `lui a0`, `lui a1`, `lui a2` and `lui t4`, followed by the orbit halfword loads in Z, Y, X order.

`incorrect ASM` at US offset `0xFFC30`. Narrowing X and Z with `& 0xFFFF` produced `lh t7,0x30(sp)` and later `sh t7,0(t4)` for X.

-> `code changed`. Narrow X through two successive `targetX = (u32)targetX & 0xFFFF` assignments, with the first taking `savedTarget.x.value` as its input. Sign-extend Z with `(s32)((u32)savedTarget.z.value << 16) >> 16` to preserve the subsequent scratch-register sequence.

-> `correct ASM`. The X load uses `lh t9,0x30(sp)` and its store uses `sh t9,0(t4)`. The rest of the orbit block and the following instructions keep their registers.

`incorrect ASM` at US offsets `0xFF780` and `0xFF790`. The building exit used `move t9,s0`, and a separate `vehicleIndex` local put the following vehicle index in `a0`.

-> `code changed`. Repeat the unsigned halfword mask on the building X value, then initialize the vehicle pointer directly from `&vehicleInstances[entry->targetIndex]`.

-> `correct ASM`. The building exit uses `move t8,s0`, `sll t9,t8,0x10` and `sra s0,t9,0x10`. The vehicle index starts with `lh t7,0xe(v1)` and the complete vehicle case matches.

`incorrect ASM` at US offsets `0xFF840` and `0xFF858`. In camera mode 0 the X sum reused `t8` for its output, and the Z load and sum both used `t9`.

-> `code changed`. Narrow both X operands through `u16` and back to `s16`. Apply the halfword mask to the Y sum and to the Z sum after sign-extending the previous Z coordinate. Preserve the later scratch-register sequence by widening the Y orbit offset, masking the Z orbit offset, and comparing the current frame directly in mode 3.

-> `correct ASM`. The X and Z pairs use `addu t9,t8,a0` and `addu t9,t8,a2`, respectively, after `lh t8`. The complete mode 0 and mode 3 instruction ranges match.

`incorrect ASM` at US offsets `0xFF978` through `0xFF98C`. The X halfword save `sh s0,0x30(sp)` occupied the `bgez` delay slot. Separating the saves from the interpolation with `if (1)` fixed the scheduling but initially moved the current-frame value from `v0` to `a2`.

-> `code changed`. Store Z through `savedTarget.z.value` and keep the volatile X save before the separate interpolation block. Before the saves, retain the empty condition `if (D_80157F54 && (D_80157F54 == (D_80157F54 & 0xFFFF))) {}`. IDO counts three references to the current-frame value, raising the allocation score from `7/3` to `10/3` across the same three ranges.

-> `correct ASM`. The current-frame load and conversion use `v0`. The X halfword save precedes `cvt.s.w`, the T4 and T5 address adjustments precede `bgez`, and `addiu ra,ra,0x758A` fills its delay slot.


`incorrect ASM` at US offset `0xFF71C`. The building Y load and shift used the allocated Y local, which also left that load after the X store at `0xFF730` in the direct-pointer form.

-> `code changed`. Capture the index in its own signed 32-bit local before constructing the typed building pointer. The signed and unsigned 64-bit round trips in `(s32)(s64)(s32)(u64)(s32)(s64)entry->targetIndex` preserve the compiler's stack non-aliasing information for the pointer. Store the shifted Y in an unsigned halfword local and convert it back to a signed halfword when adding the map offset.

-> `correct ASM`. The building index starts with `lh t9,0xe(v1)`. The Y path is `lh t8,2(v0)`, `sra t9,t8,0x2` and `addu a3,t9,t6`. The X store falls between the shift and the addition.

`incorrect ASM` at US offsets `0xFFBA8`, `0xFFBAC` and `0xFFBB8`. An isolated local for the first orbit Z load emitted `lui v0`, `lh v0,0x7fc4(v0)` and `mtc1 v0,$f16`.

-> `code changed`. Share the signed halfword local between the first orbit Z load and the interpolation branch's current camera Z snapshot. Subtract the snapshot from the next Z coordinate and add the scaled difference back to the same snapshot.

-> `correct ASM`. All three orbit instructions use `a2`. The interpolation and second orbit Z loads also retain their original `a2`.
