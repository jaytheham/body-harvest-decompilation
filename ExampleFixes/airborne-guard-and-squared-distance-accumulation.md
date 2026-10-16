### Guard both distance cases, then accumulate into the result register

`func_802D803C_25777C` matches all 228 instructions and passes the full US ROM checksum.

The target first computes squared distance, then checks the player's airborne flag before either type-dependent distance test:

```c
distanceSquared = (D_80052B34->unk0 - alienInstances[arg0].unk0) *
    (D_80052B34->unk0 - alienInstances[arg0].unk0);
distanceSquared += (D_80052B34->unk4 - alienInstances[arg0].unk4) *
    (D_80052B34->unk4 - alienInstances[arg0].unk4);
if (!(D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE) &&
    ((D_80052B34->unk1A == 0 && distanceSquared < 0x186A0) ||
     (D_80052B34->unk1A != 0 && distanceSquared < 0x493E0))) {
    /* Activate the appropriate attack. */
}
```

Putting the airborne test inside only the first arm of the OR is a logic error: the target branches around both attack-distance cases when that flag is set. Computing distance inline after the flag test also duplicates arithmetic across control-flow paths instead of preserving the unconditional target calculation.

A single named sum restores the logic and instruction order but uses anonymous temporaries for both multiplication results. Assigning the X square first and accumulating the Z square produces the target `mflo a2`, `mflo t2`, `addu a2,a2,t2`, and fixes the subsequent temporary-register cycle. The word local fits the existing `0x48` frame.

Remove the redundant `arg0 &= 0xFF` for the byte parameter. In the opening joint chain, assign the C child to `sp44` before the D child to `sp40`; IDO still schedules the D load first for its dependent traversal, but now uses the target load/store registers.
