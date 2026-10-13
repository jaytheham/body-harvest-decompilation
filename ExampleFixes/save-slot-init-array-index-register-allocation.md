# Save-slot initialization through array-index traversal

`func_800021CC_2DCC` matched after replacing its advancing byte pointer with an advancing `s32` array index into `D_800431C0`.

Keep a separate slot stride for the final checksum call:

```c
stride = arg0 * 0x7A;
offset = stride + 0x53;
/* Each store uses D_800431C0[offset + fieldOffset]. */
/* Advance offset inside each loop body. */
func_800015B4_21B4(stride + 0x4F, 0x76);
```

With a named pointer, IDO used a temporary register for the initial payload offset and another for the array base. The extra temporary shifted every subsequent constant register by one. Naming the initial offset alone did not help because it was consumed only by pointer initialization.

Using the offset as the induction variable let IDO strength-reduce the array accesses to the same pointer walk while placing the initial offset in `a1`, the stride in `a2`, and the array base in `t6`. This also restored the target's instruction scheduling and constant registers.

Retain the original explicit stores and loop bounds. In this function the small clearing loops compile without unrolling; rewriting their structure can change that behavior. The serialized records are described by `SaveAreaStat` and `SaveSlotData` in `include/structs.us.h`.

Verified with `tools/make.ps1`: `build/bh.us.z64: OK`, and no differences from `tools/diff.ps1 func_800021CC_2DCC func_80002378_2F78`.