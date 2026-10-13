### Increment temporary registers via chained assignments

When target is using `t8` for example and current is using `t6`, performing chained variable assignments can "use up" the lower temporary registers so the higher one will be used:
```c
    D_8028AA84 = 0;
    D_8028AA8C = 0;
    D_8028AA80 = 0;
```
changed to ```D_8028AA80 = D_8028AA8C = D_8028AA84 = 0;``` results in the later use of t8 instead of t6.


## Crater initialization: source order changes pointer colors (partial)

In BF9C0.c, func_800B8C2C_C7BDC improves from 360 to 180 when the width, height, X offset, and Z offset initializations precede the X-origin assignment. IDO schedules the same instructions but assigns their address registers in the target order. The remaining differences are temporary registers; this is not a complete match. Keep the best body under NON_MATCHING.

Changing the brightness parameter from s32 to u16 reproduces the opening temporary registers but introduces an extra coordinate copy; s16 and u8 also worsen the complete comparison. Native int versus s32 is neutral here. Prefix increments, comma forms, explicit narrowing, literal types, and named dimension locals did not close the residual. The existing addressed argument expression preserves the target argument-home store.

## Unused saved registers from loop-carried XOR identities

func_800B8D80_C7D30 is byte-exact and the full ROM checksum is OK. Its target saves s2/s3/s4 without any visible use. The ordinary clamp and nested-loop implementation uses five saved registers instead of eight (score 1525). Reuse three expired word calculations, reset them to zero before the loop, and update each with ^= 0 inside an if (x) after the inner tile-registration call. Uopt reserves their saved registers; the emitted identity operations, initialization, and guard disappear. Every target instruction, saved-register slot, and bound register then matches.

Unconditional updates in the outer loop leave the upper Z bound in s2 instead of s5 (score 30). Unconditional inner-loop updates displace the outer index (score 50). Guarding the inner-loop identities by the outer index gives score 0. Reusing the original shared clamp value and two tile-coordinate calculations removes all three added reservation locals without changing a byte. Keep the call and conditional identities on the same physical source line, and document their compiler purpose.

Empty conditions, dead zero assignments, unused register declarations, and unused incremented counters do not reproduce these reservations. Native int versus s32, shared clamp temporaries, equivalent ternaries, and equivalent for loops are neutral before adding the reservation pattern.
