# Partial smoke allocator: structured level gates

The target reloads `D_80156ED8` after the first random call. The old goto-based candidate instead reused its cached byte. Two nested successful gates reproduce the target reload and branch layout: level differs from 1 or random modulo 9 is below 6, followed by level differs from 2 or random modulo 9 is below 3. Flat early returns made IDO keep the global address in s0, adding an instruction and displacing the effect-index register.

A typed twelve-byte `SmokePuffState` describes three signed halfword positions, RGB bytes, opacity, and kind. Use direct entry-array metadata for lifetime and kind. The target particle setup is structurally reproduced.
