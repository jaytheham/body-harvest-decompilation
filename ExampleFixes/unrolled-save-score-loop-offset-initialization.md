# Unrolled save-score loop: named offset and early initialization

`func_80002B20_3720` sums six little-endian scores in eight-byte save-stat records. IDO 5.3 -O2 fully unrolls the loop as two initial records followed by four more. The residual `li v0,2; sll ...,v0,3` is an unrolling artifact, not evidence of hand-written straight-line C.

Use a named byte offset inside the loop, then index the save byte array. Inlining the whole index into every byte access allowed IDO to combine the slot base and stride too early, losing an address addition and changing load scheduling.

Initialize the loop counter and accumulator before calculating the slot stride. Moving counter initialization from the `for` header to before the stride calculation placed the counter in `v0`, accumulator in `v1`, and stride in `a1`. Declaration reordering alone did not change their allocation.

The last difference was the operand order of `addu t0,a1,t9`. Reversing the operands in the single C expression did not help. Splitting the calculation did:

```c
idx = 0;
total = 0;
stride = arg0 * 0x7A;
base = D_800431C0;
for (; idx < 6; idx++) {
    offset = stride;
    offset += idx * 8;
    total += base[offset + 0x53];
    total += base[offset + 0x54] << 8;
    total += base[offset + 0x55] << 16;
    total += base[offset + 0x56] << 24;
}
```

All integer locals here are `s32`. Making the stride unsigned caused additional address calculations and substantially changed scheduling. The serialized record layout is already described by `SaveAreaStat` and `SaveSlotData` in `include/structs.us.h`.

Verified with the required project build: `build/bh.us.z64: OK`, with no function diff differences.
