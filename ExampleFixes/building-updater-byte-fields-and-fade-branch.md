`lh ..., 4(v0); andi ..., 0xff00; ori ..., 2; sh ..., 4(v0)`
-> `foundEntry->unk4 = (foundEntry->unk4 & 0xFF00) | 2;` changed to `foundEntry->vehicleType = 2;`
-> `sb ..., 4(v0)`

`lbu ..., 0xa(s0); sb ..., 0xa(s0)`
-> Updater accesses to `inst->state` changed to `inst->unkC`.
-> `lbu ..., 0xc(s0); sb ..., 0xc(s0)`

Fall-through from the fade increment into the `>= 1.0` test.
-> Two consecutive fade conditions changed to `if (value < 1.0) { ... } else if (value >= 1.0) { ... }`.
-> `b .L8011A738_1296E8` after the increment, bypassing the upper-bound action until the next update.

Spill/reload of a cached game tick around particle callbacks.
-> Replace the saved `gameTick` local with a fresh `D_80052A8C` read for each cadence check.
-> `lui v0, 0x8005; lw v0, 0x2a8c(v0)` after each callback.

`xor result, flags, masked; ...; xor word, oldWord, shifted`
-> Change the explicit update to `inst->unk8 = (((flags & mask) ^ flags) << 12) ^ inst->unk8;`.
-> `xor result, masked, flags; ...; xor word, shifted, oldWord`

`addiu sp, sp, -0xe0` with duplicate sound-distance homes and a redundant normalization multiplier.
-> Inline the two squared sound-distance expressions, remove `tempF0`, and reuse the existing halfword coordinates for sound calls. Order the declarations as the target stack requires, with the compaction index/pointer locals before `activeEntry`.
-> `addiu sp, sp, -0xd0`; loop index at `sp+0xc0`, vector at `sp+0xa8/0xa4/0xa0`, extent at `sp+0x9c`, active-entry pointer at `sp+0x80`.

`lbu t3, 0xc(s0)` in the shared timer-check paths.
-> Read the compaction guard as `(buildingInstances[*activeEntry].statusFlags & 0xFFFF) & 1`, following the already matched halfword-mask pattern.
-> `lbu t4, 0xc(s0)` with no additional mask instruction.

`ldc1 f6, factor; cvt.d.w f10, height; mul.d f16, f6, f10`
-> Define the existing 0.4 constant as `ShadowGeometryConstant` and access `D_80144F88_153F38.value`.
-> `ldc1 f10, factor; cvt.d.w f8, height; mul.d f16, f8, f10`, preserving the original constant address and subsequent floating register sequence.

`sw tablePointer, 0x80(sp)` before the building-array base finishes its `lui/addiu` pair.
-> Combine the counter and table-pointer initialization in `for (i = 0, activeEntry = D_8015EA60; ... )`.
-> The building-array `lui/addiu` pair precedes `sw tablePointer, 0x80(sp)`, followed by `sw zero, 0xc0(sp)`.

One `lbu` shared by the byte copy and index lookup, followed by `andi index, copiedByte, 0xff`.
-> Read the unchanged next ID through `((volatile u8 *)cursor)[1]` for the lookup, leaving the byte-copy access ordinary.
-> Separate `lbu t5, 1(v0)` and `lbu t4, 1(v0)` at the loop entry and body; the index-narrowing `andi` disappears.

`li t1, 2; li t2, 3` before the vehicle-type branch.
-> Put `if (D_80052544 == 0) { foundEntry->vehicleType = 2; } else { foundEntry->vehicleType = 3; }` on one physical source line.
-> `li t2, 3; li t1, 2`, preserving the target branch and stores.

The compaction counter decremented before loading the active-entry pointer.
-> Keep `i--; activeEntry--;` on one physical source line.
-> `lw t8, 0x80(sp); lw t6, 0xc0(sp); addiu t9, t8, -1; addiu t7, t6, -1; sw t7, 0xc0(sp); sw t9, 0x80(sp)`.
