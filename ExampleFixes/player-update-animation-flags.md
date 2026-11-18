`incorrect ASM`: In `func_800ED78C_FC73C`, the tracked-vehicle coordinate conversion used `lh t4,0(v0)` and `bgez t4` at `0xFDE10` and `0xFDE14`.

-> `code changed`: Load the animation flags into the existing `temp_v1_6` before checking mask `0x480`.

-> `correct ASM`: The coordinate conversion emits `lh t3,0(v0)` and `bgez t3`, matching the target. The full function has two fewer differing words.
