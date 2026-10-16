### America random coordinates: cache first, then store beside the call

`func_802D9038_258778` matches all 310 instructions and the full US ROM checksum.

Use direct `alienInstances[idx]` access throughout the function. Keeping a named instance pointer, including references before the effect branch, changes the alias information and schedules coordinate loads before outgoing argument stores. Replacing only the final call arguments does not fix this.

For the random X coordinate, compute into a register local before copying to the addressed output local:

```c
effectX = (alienInstances[idx].unk0 + (func_800038E0_44E0() % 200)) - 0x64;
if (effectX) {}
effectZ = sp60;
if (effectZ) {}
sp68 = effectX; sp64 = func_800B84D0_C7480(effectX, effectZ) >> 8;
```

Assigning `sp68` first and then copying to `effectX` gives the wrong registers and instruction order. The discarded conditions retain the required full-word coordinate loads and argument sign-extension moves. Keeping the `sp68` assignment and terrain call on the same source line puts `sw v1,0x68(sp)` in the call delay slot; separate lines place it before the two argument moves. This was the final three-instruction scheduling difference.

The operand order `instanceCoordinate + randomRemainder` also matters. Reversing that addition swaps the coordinate-load and remainder registers despite identical arithmetic. Apply the same ordering to the random Z coordinate.

The earlier trigonometric blocks use one signed word angle local, assigned separately in both branches. Pass it directly to `sins` and `coss`; their `u16` parameters provide the target mask and shared argument cache. A separately masked local or explicit mask at each call changes registers or adds instructions. An empty `if (idx) {}` after the index assignment preserves its target `s1` allocation once the coordinate caches are present.
