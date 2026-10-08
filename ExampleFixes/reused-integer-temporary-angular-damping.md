# Reuse integer temporaries across disjoint lifetimes

In `func_80109370_118320`, reusing the initial vehicle-flags temporary for `vehicle->unk16` before the angular updates gave the target integer register allocation. Leaving this halfword access inline put the flags pointer in a3 instead of a2 and shifted the correction register from v1 to v0.

Store the unkA update before the unk6 update to reproduce the target scheduling and temporary registers. Direct floating-point field assignments avoided unnecessary named intermediate values. The terrain-height comparison must remain floating point; casting the predicted height to s32 introduces a truncation and integer comparison absent from the target.
