# Typed spark payload places the active byte store

In `func_800C541C_D43CC`, describing the payload at entry offset 8 as `SparkEmitterState` placed `active` at payload offset 10. Its assignment produces the target `sb` at entry offset `0x12`, overlapping the high byte of the old `unk12` halfword. The payload contains three signed-halfword positions, three color bytes, padding at offset 9, the active byte, and final padding.
