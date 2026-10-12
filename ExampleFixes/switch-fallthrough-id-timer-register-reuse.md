# Switch fallthrough and ID/timer temporary reuse

Matched `func_802D6904_18F414` with IDO 5.3 `-O2 -mips2 -32`.

The target jump table points cases 3, 5, and 7 into the middle of the blocks for cases 2, 4, and 6. Represent these as separate case labels with intentional fallthrough: the even case performs an action and increments the state, then the odd case checks the timer. Grouping these cases with the final completion case changes the behavior. Remove the placeholder jump-table constant when compiling the C switch.

In case 7, the target uses `lh v1,0(t0)` for both the sentinel comparison and `andi a0,v1,0xff` before the call. Reading the halfword separately in the check and call can produce an extra load, including a byte load at the overlapping `D_80157F95` address. Capture the ID in a signed 32-bit local and use that local for both operations.

A separate ID local initially allocated to `v0`. Reusing that same local for all four timer comparison results recovered `v1` without changing the comparison instructions:

```c
temp = *idPtr;
if (temp != 0xFF) {
    func_80087AFC_96AAC(temp);
}
temp = D_80157F8E++ >= 0x1F;
if (temp) {
    D_80157F8E = 0;
    D_80157F8C += 1;
}
```

Keep the newly spawned alien ID in its own local. Reusing that local for case 7 changed its earlier allocation from `a0` to `a1` and introduced a move before the spawn initialization call. Also keep the initial pre-switch ID check as a direct global access: assigning it to the timer temporary changed otherwise matching registers in that block.

The final source, including removal of unused state/counter pointers and redundant argument casts, passed the full ROM verification: `build/bh.us.z64: OK`.
