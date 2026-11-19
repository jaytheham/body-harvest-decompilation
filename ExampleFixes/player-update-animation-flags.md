`incorrect ASM`: In `func_800ED78C_FC73C`, the tracked-vehicle coordinate conversion used `lh t4,0(v0)` and `bgez t4` at `0xFDE10` and `0xFDE14`.

-> `code changed`: Load the animation flags into the existing `temp_v1_6` before checking mask `0x480`.

-> `correct ASM`: The coordinate conversion emits `lh t3,0(v0)` and `bgez t3`, matching the target. The full function has two fewer differing words.

`incorrect ASM` — After the vehicle-height and interpolation changes, the named flag temporary used `lui a3,0x8014` at `0xFDDE8`. The separate airborne-counter assignment used `lw a3,0(v0)` at `0xFD83C`.

-> `code changed` — Test mask `0x480` directly on the animation table field. Increment the airborne counter in the condition with `++D_801575D8 == 4`.

-> `correct ASM` — The animation table load starts with `lui t9,0x8014` and the airborne counter read uses `lw t4,0(v0)`. The tracked-vehicle division also recovers `lh t3,0(v0)` and `bgez t3` at `0xFDE10` and `0xFDE14`.

`incorrect ASM` — The final animation-state branch loaded the flags through `v0`, using `lui v0,0x8014` at `0xFDF64` and `lw v0,0xE5B0(v0)` at `0xFDF80`.

-> `code changed` — Widen the animation-table flag field to `s64` before assigning it to the existing `s32 temp_v1`.

-> `correct ASM` — The flag address and load use `lui t9,0x8014` and `lw t9,0xE5B0(t9)` at those offsets.
