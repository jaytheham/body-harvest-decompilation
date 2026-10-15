# Unrolled save-score loop: named offset and early initialization

`func_80002B20_3720` sums six little-endian scores in eight-byte save-stat records. IDO 5.3 -O2 fully unrolls the loop as two initial records followed by four more. The residual `li v0,2; sll ...,v0,3` is an unrolling artifact, not evidence of hand-written straight-line C.

Use a named byte offset inside the loop, then index the save byte array. Inlining the whole index into every byte access allowed IDO to combine the slot base and stride too early, losing an address addition and changing load scheduling.

Initialize the loop counter and accumulator before calculating the slot stride. Moving counter initialization from the `for` header to before the stride calculation placed the counter in `v0`, accumulator in `v1`, and stride in `a1`.

The last difference was the operand order of `addu t0,a1,t9`. Splitting the calculation did:

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

### High-score restore (func_80001984_2584)

Use nested indexed loops for the six name bytes and five records; IDO generates three parallel destination pointers without explicit pointer arithmetic. Sequential offset++ byte reads and incremental score/time additions reproduce the intermediate stores. The target retries checksum failure at the bottom: while (1) { if (validate(...)) { restore; return; } else { initialize(); } } matches, whereas a leading while (!validate(...)) duplicates the validation call. Clear pad[0] before the final secondsTaken addition to place the zero-byte store before the loop branch. Full ROM verified on 2026-10-12.
