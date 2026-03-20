When a function body does `sh unk12` → `multu arg_idx` → `lw unk20` → ... → `sw unk20` → `sh unk10`:
- The early `multu` is driven by the FIRST use of the argument-indexed pointer (e.g. `unk26` load).
- Put the assignment driven by the argument-indexed load (e.g. `v1->unk26 = arr[arg].unk26 + 1`) **before** the `|=` and the independent `unk10` store in the C source.
- This causes IDO to emit multu for arg early and interleave `lw/or/sw` for the `|=` while the multu is in flight.

Example (correct order):
```c
v1->unk12 = 0x380;
v1->unk26 = arr[arg].unk26 + 1;   // triggers early multu
v1->unk20 |= 0x40000000;           // lw/or/sw interleaved while multu runs
v1->unk10 = 0x320;                 // sh deferred
```

Also: to get `multu` instead of `sll/addu/sll` for struct index computation, declare the index variable as `u8` (not `s32`). Using `s32` causes IDO to use the shift expansion. When the callee returns `s32` but the caller stores to `u8`, IDO emits an extra `andi` — fix by changing the callee to return `u8` if appropriate.
