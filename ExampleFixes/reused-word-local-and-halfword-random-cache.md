# Reuse a word local to control hidden call temporaries

Siberia `func_802E02CC_2C26FC` matched after separating three nested calls and reusing one `s32` local for their results:

- Target angle from `func_800860CC_9507C` before calling the angle clamp.
- Terrain height shifted right eight bits before calling the projectile helper.
- The second random number before calling the same helper again.

This preserves the target instruction order while removing implicit CFE temporary homes. Leaving the angle call nested placed the cached joint pointer at sp+0x4C; the shared word local moved it to the target sp+0x50.

Use word-sized transform outputs. Pass X and Z directly to the halfword parameters: explicit `(s16)` coordinate casts let IDO replace the target word loads and shifts with halfword loads. A `SignedWord` Y output accessed through `.halves.low` safely expresses the target's low-halfword reads.

The first random value is stored through `SignedWord.halves.high`, then read as `u16` for signed integer modulo. Four unused halfword slots before this local put its halfword at sp+0x58. A plain halfword local occupied sp+0x5A; an inline random call saved a word instead of the target halfword. The final implementation has no comma expressions or function-pointer casts. Whole-ROM checksum verified OK.
