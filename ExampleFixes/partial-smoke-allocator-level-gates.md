# Partial smoke allocator: structured level gates

`func_800C1ECC_D0E7C` remains NON_MATCHING. Its typed, structured candidate has diff score 1929 after 65 compiled variants.

The target reloads `D_80156ED8` after the first random call. The old goto-based candidate instead reused its cached byte. Two nested successful gates reproduce the target reload and branch layout: level differs from 1 or random modulo 9 is below 6, followed by level differs from 2 or random modulo 9 is below 3. Flat early returns made IDO keep the global address in s0, adding an instruction and displacing the effect-index register.

A typed twelve-byte `SmokePuffState` describes three signed halfword positions, RGB bytes, opacity, and kind. Use direct entry-array metadata for lifetime and kind. The target particle setup is structurally reproduced.

Remaining issues: IDO caches the constant 2 across the level and particle-kind checks in s0, whereas the target rematerializes it in at and retains the initial effect index in s0. The current frame is 0x50 versus target 0x48; the effect pointer and cached kind spills also exchange slots. Trivial scope blocks, explicit byte masks, signed/unsigned index types, a particle-kind switch, and a cached level variable did not fix this. A trivial wrapper around the allocation-success check save five score points but do not solve the register lifetime.

The structured candidate and source type are saved behind NON_MATCHING. The full ROM checksum passes with the original assembly active.
