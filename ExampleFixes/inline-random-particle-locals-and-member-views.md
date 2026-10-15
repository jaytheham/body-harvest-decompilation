# Inline random particle locals and member views

Matched Java `func_802DC4A8_1F51B8`, verified with full ROM checksum OK and function diff 0.

The draft already matched all instructions/registers, but its frame was 0x68 instead of 0x60 and its four halfword samples were two bytes above their target homes. A named actor pointer, a reused word RNG result, and a named color pointer unnecessarily extended the compiler's source-home reservation.

Use five meaningful halfword locals in order: `u16 size`, `s16 colorIndex`, `s16 x`, `s16 y`, `s16 z`. The size has no runtime stack store; the color index and coordinates occupy target offsets 0x5C, 0x5A, 0x58, 0x56. Inline each random call in its own sample calculation and inline the first period draw in the counter remainder condition. These are sequential statements, so RNG draw order stays explicit. Index the color table directly instead of adding a color pointer local.

Direct actor-array coordinate reads choose the opposite addition-operand registers. A named actor pointer fixes those registers but leaves the saved color address at sp+0x48 instead of sp+0x4C. Read-only typed member views, e.g. `((const AlienInstance *)&alienInstances[idx])->unk0`, preserve member-reference weighting without reserving storage for that pointer. This resolves both the operand registers and the final saved-address slot. The neighboring matched `func_802DCE34_1F5B44` uses the same member-view pattern.

The four-color table is naturally an `EffectRgb[]`. Using its existing r/g/b fields replaces flat byte offsets and produces identical assembly, including in the already matched neighboring caller. Update the data definition and variables header together. This typing improvement alone does not fix the spill; the member views and reduced local set are necessary.
