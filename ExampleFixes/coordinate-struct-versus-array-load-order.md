# Coordinate struct versus array load order

Java func_802DF1F8_1F7F08 matched after changing a three-word local result from s32 position[3] to Vec3i position. The final difference was:

- Target: lh t2,2(s0), then lw t3,0x58(sp).
- Array version: lw t2,0x58(sp), then lh t3,2(s0).

Both versions computed alien->unk2 + the middle coordinate. Reversing the operands, unsigned casts, and an explicit sqrtf result did not fix the load order. Using the typed struct's position.y field produced the target order without changing the frame or adding instructions. Pass &position.x to the existing three-word output API.

The matched 0x70 frame retained a four-byte gap before the coordinate struct and a four-byte unused local between the yaw and pitch locals. Every instruction matched and the full ROM checksum passed.
