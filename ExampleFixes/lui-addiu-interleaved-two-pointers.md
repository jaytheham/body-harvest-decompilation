### Interleaved LUI/ADDIU for two pointer values (`lui s0, lui s2, addiu s2, addiu s0`)

When a function initializes two global address pointers (e.g., a loop iterator and a loop terminator) and the target assembly shows an interleaved LUI/ADDIU pattern like:

```
lui   s0, hi(A)
lui   s2, hi(B)
sw    ra, ...
addiu s2, s2, lo(B)   <- s2's ADDIU comes BEFORE s0's
addiu s0, s0, lo(A)
```

This means s0's LUI is emitted first (so `A` starts computing first), but s2's address is COMPLETED before s0's.

**Using a separate statement for each pointer** produces either all-s0-first or all-s2-first ordering (not interleaved), and won't match.

**Fix:** Use the comma operator to combine both assignments in a single statement, with the s0 variable (iterator) on the left and the s2 variable (terminator) on the right:

```c
VehicleInstance *var_s0;   /* declare iterator first -> gets s0 */
VehicleInstance *end;      /* declare terminator second -> gets s2 */

var_s0 = vehicleInstances, end = (VehicleInstance *)&D_80050AD0;
```

This causes IDO to:
1. Start computing `vehicleInstances` address (emit `lui s0`)
2. Look ahead within the comma-expression and start `D_80050AD0` address (emit `lui s2`)
3. Complete s2's address (emit `addiu s2`) before finishing s0's
4. Complete s0's address (emit `addiu s0`)

The comma separator increases "intertwinedness" of the two assignments (per DecompHints.md "Whitespace" section), causing the interleaved scheduling.
