The final sound-pitch expression in `func_802DE7C4_322914` produced `cvt.d.w` and `div.d`, whereas the target converts the random remainder to single precision and divides by a single-precision 500.

-> Use `(f32)(func_800038E0_44E0() % 100) / 500.0f` before adding `D_802E7B80_32BCD0[0]`. Keep the outer conversion to `f32` for the sound argument.

-> The conversion sequence becomes `cvt.s.w; div.s; cvt.d.s; add.d; cvt.s.d`, matching the target's precision changes. The function remains unmatched in stack placement, allocation and scheduling.

The particle calls interpreted each three-word position buffer as packed coordinates: shifts extracted the high half of one word, then reused its low half for the next coordinate.

-> Keep each output from `func_802DDB08_321C58` as an `s32[3]` and pass elements 0, 1 and 2 independently for both endpoints of every particle edge.

-> The first endpoint uses signed-halfword loads from the low halves of three consecutive words; the second endpoint uses a signed-halfword load for argument four and word loads for the two stack arguments. This restores the target's coordinate accesses without the incorrect packed-word shifts.

The particle-radius bitmask expression produced `mfhi` followed by an `andi` directly into the argument register, omitting the target's separate argument move.

-> Replace `(func_800038E0_44E0() % 250) & 0xFFFF` with `(u16)(func_800038E0_44E0() % 250)` in `func_802DE7C4_322914`.

-> The narrowing now produces `mfhi a3; andi temp,a3,0xFFFF; move a3,temp`, matching that target sequence.

The initial joint traversal loaded and stored the sibling at index 5 before following joint 3 to joint 4, putting `lb parent->unkD` and its `sh` too early.

-> Assign `chain.joints[4] = entry[chain.joints[3]].unkC` before `chain.joints[5] = entry[chain.joints[2]].unkD`.

-> IDO schedules `sh joint3; lh joint3; sll; lb parent->unkD; addu; lb child->unkC; sh joint5`, matching the target order at ROM 0x322A04 through 0x322A1C.

The flat `s16 joints[20]` representation loaded the saved root and built its node address before the target's cosine constant setup in event case 9.

-> Use `CometJointChain` with `s16 joints[18]`, `s16 child`, and `s16 root`, passing `chain.joints` to the animation helper and reading `chain.root` in case 9.

-> The root-spawn sequence now places the cosine constant setup, root load, conversions and node accesses in the target's order, including `lui at,0xC02E` before `lh a1,0xEE(sp)`. Register allocation elsewhere remains unmatched.

In event case 3, the leaf-first coordinate sums calculated the two joint addresses in the opposite order from the target and loaded the leaf component before its parent.

-> Write each sum as `entry[chain.joints[14]].component + entry[chain.joints[15]].component` for X, Y and Z.

-> IDO builds the leaf pointer before the parent pointer, then loads the parent component followed by the leaf component, matching the target instruction order at ROM 0x322B6C through 0x322BB8. Temporary register phase remains different.
