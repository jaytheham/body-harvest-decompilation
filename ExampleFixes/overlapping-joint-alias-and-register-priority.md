# Overlapping joint aliases can change register priority

Matched Java `func_802DB14C_1F3E5C` with IDO 5.3 -O2.

A draft had the correct instructions but rotated three opening values: the joint array base, the first child ID, and the child joint pointer. Changing lookup spelling and declaration order did not fix it.

The final lookup used `D_8014DD5C[secondJoint].unk1`. This is the same byte as `D_8014DD50[secondJoint].unkD`: the former symbol starts twelve bytes into the joint array. Using the main joint struct consistently makes IDO track the array base over a different range. Although the final load still assembles to the same address, its source symbol affects allocation much earlier in the function.

Use ordinary `s16 firstJoint` and `s16 secondJoint` locals. With the overlapping alias, their opening allocation was base=v0, joint=v1, ID=t0. Replacing the final alias lookup with the main struct access gives the target joint=v0, ID=v1, base=t0. Byte ID temporaries plus an array instead gave ID=v0 even after correcting the alias. No pointer to a stack ID or padding array is needed.

The nested `MAX(MAX(dx, negativeX), MAX(dz, negativeZ))` preserves the target repeated comparisons and replaces the draft expanded control flow. Named coordinate differences, negated differences, distance, and animation state retain the exact 0x60 frame without unused padding.

Verified with `tools/make.ps1` reporting `build/bh.us.z64: OK` and the function diff reporting score 0.
