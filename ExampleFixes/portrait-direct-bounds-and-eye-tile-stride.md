`incorrect ASM`: In `func_800190D4_19CD4`, copying the two mouth bounds into named halfword locals reuses `v0` for both checks, delays the mouth coordinate additions until after the texture load, and changes instruction/register ordering.

-> `code changed`: Test `entry->unk4` and `entry->unk6` directly and repeat those field expressions when calculating the mouth coordinates. Retain the two halfword declaration reservations to preserve the macro stack layout.

-> `correct ASM`: Bounds load into `t9` and `t7`, spill as words to `sp+0x2c` and `sp+0x28`, and the coordinate additions use `a0` and `a1` before the texture commands. The mouth-state argument load precedes the second bound branch.

`incorrect ASM`: The eye overlay's render-tile command ends in `0x1000` rather than the target `0x0a00` at ROM `0x1A2A0`.

-> `code changed`: Use a line value of 5, not 8, for the eye overlay's `gDPSetTile` render tile, matching its load-tile stride.

-> `correct ASM`: `ori t9,t9,0xa00` emits the target tile command. The complete US ROM checksum passes.
