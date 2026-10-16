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
