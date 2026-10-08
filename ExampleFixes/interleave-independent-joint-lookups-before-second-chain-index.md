# Interleave independent joint lookups to match IDO temporary reuse

Matched Siberia `func_802DF4C8_2C18F8` (ROM `0x2C18F8`).

With correct logic and stack layout, the second right-side lookup used `t8/t9` for its address instead of `t4/t5`. This also changed the left-index reload and moved a byte load before a shift. Reordering the independent left lookup before the second right lookup matched all remaining instructions:

```c
rootJoint = D_8014DD50[alienInstances[arg0].unkC].unkC;
sp2A = D_8014DD50[rootJoint].unkC;
rightJoint1 = D_8014DD50[rootJoint].unkD;
sp28 = D_8014DD50[sp2A].unkD;
rightJoint2 = D_8014DD50[rightJoint1].unkD;
sp22 = D_8014DD50[rightJoint2].unkD;
sp20 = D_8014DD50[sp22].unkD;
```

The scheduler still executes much of the longer right chain first. Source order reserves the left lookup's temporary registers before the second right lookup, letting that lookup reuse `t4/t5`. Do not restrict permutations to the order of the final leaf assignments; an independent lookup can belong between two intermediate assignments on the other chain.

Direct `alienInstances[arg0].field` access throughout the function also lets IDO load the old heading before the reset stores while retaining its target register. A named alien pointer delays this load; a scalar heading cache fixes its order but occupies the wrong register.

`sins` already accepts `u16`. Removing the explicit `& 0xFFFF` from `sins(D_80052A8C * 10000)` preserves the target `andi` and fixes the last multiply shift plus temporary-register allocation throughout the following code. Casting the sine result to `f32` before double arithmetic retains `cvt.s.w` followed by `cvt.d.s`. Inline `500.0` and remove the obsolete external constant placeholder to match the double-add operand order and rodata.

The function diff was zero and the whole-ROM checksum reported `build/bh.us.z64: OK` after cleanup.
