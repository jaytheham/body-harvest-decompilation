# Shared collision loop variables and register priority

`func_800CF948_DE8F8` matches with one `u8` loop counter and three `s32` distance variables declared outside both vehicle and alien collision loops. The vehicle loop stores absolute distances; the alien loop reuses the same variables for signed distances. Separate variables in the second loop assigned X/Z to V0/A1 instead of the target S1/S0 and displaced the alien-count register. Sharing them preserved the target register assignments without changing instructions.

Compute the collision limit in one expression:

```c
maxDist = vehicleTypes[vehicle->unk1A].unkC + absRadius + 100;
```

Loading the type radius into `maxDist` and then assigning `maxDist + absRadius + 100` increased its register priority. IDO assigned maxDist to S1, the vehicle pointer to S3, and X distance to S2. The single expression produced the target S3/S2/S1 assignments.

The pool next index must use `D_80154318[index].unk4`; reading it through the local entry pointer caused a pointer spill and increased the frame from 0x48 to 0x50. `BH_ABS(radius)` also produced the target two-arm selection, unlike initializing a result to -radius and conditionally overwriting it.

Related renderer `func_800CFD84_DED34` now has matching instructions except an 8-byte frame-size difference. Its repeated scale calculations need a cached signed radius inside each age branch, literal coefficients, and primitive-color conversion directly in each graphics command. Individual red/green/blue struct members yield the target load/OR order; indexed color arrays rotate that order. Assigning rotation X from age before zeroing Y/Z lets IDO schedule the age load ahead of the zero stores.
