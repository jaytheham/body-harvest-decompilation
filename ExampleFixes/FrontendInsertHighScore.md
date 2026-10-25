Incorrect ASM: separate insertion and accumulation counters leave the record pointer in `v1`, the shift counter in `s4`, and the byte-copy counter in `v0`. Raw byte pointers also prevent the target level-statistic loads from being hoisted.

-> Code changed: access `SaveSummary` fields and names through their arrays, accumulate seconds before humans in a do/while loop, and reuse the record-shift counter for both the current-name copy and statistic accumulation. Keep a separate counter for the six-byte record-name shift.

-> Correct ASM: the record pointer stays in `v0`, the shared counter uses `v1`, and the byte-copy counter uses `s4`. IDO hoists the first two levels' statistics, peels the name copies, and emits the exact 0x234-byte function. Both complete ROMs match.
