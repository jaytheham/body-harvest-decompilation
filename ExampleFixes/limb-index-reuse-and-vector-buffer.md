### Limb index reuse and typed vector buffers

`func_802DCCD8_25C418` performs three skeleton transforms and collision checks.
Five `s16` limb indices, followed by the byte alien type index, reproduce its
0x78-byte stack frame. Replacing the limb indices with a persistent node pointer
or an extra word temporary changes stack allocation and load scheduling.

Use a `Vec3i` for the transform output and an `s16[3]` for the intermediate
coordinates. Direct `D_8014DD50[node]` coordinate accesses reproduce the target
loads and stores without pointer arithmetic.

Reuse the final halfword index for both links:

```c
tip = D_8014DD50[node].unkC;
tip = D_8014DD50[tip].unkD;
func_800A931C_B82CC((s8)tip, &offset.unk0, &result.x);
```

Combining these two assignments into one nested lookup preserves the instruction
sequence but changes V0/V1 and temporary register allocation throughout the
function. Keeping the two assignments produced a zero diff and ROM checksum OK.

### Independent initial stores: group only the reversed pair

While matching `func_802DC880_25BFC0`, the literal loads were already correct,
but the stores of 700 and 900 appeared in the opposite order. This source form
reproduces the target initialization exactly:

```c
sp5C = 0x190;
sp58 = 0x2BC, sp54 = 0x384;
```

Three separate statements stored 700 before 900. Grouping all three assignments
with commas also moved the 400 store, which was already correct. Grouping only
the last pair retains the literal registers and reverses just their stores.
This region is verified; the whole function still has register-only differences
in its initial skeleton traversal (score 90).

### Preserve addition operand order after removing an instance alias

Replacing the local alien pointer with `alienInstances[alienIdx]` left one
commutative instruction reversed in the height clamp. Writing the condition as
`alienInstances[alienIdx].unk2 + alienInstances[alienIdx].unk10 < 0x1F4`
restores the target `addu t7,t6,v0`. The reversed source operand order emitted
`addu t7,v0,t6`. This fixes that region without restoring the redundant pointer
or parameter copy; the whole-function residual remains the joint traversal.
