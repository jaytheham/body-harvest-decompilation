### uopt temp for pointer spill vs explicit user-declared pointer variable

When a pointer (e.g. boss pointer `v0`) is spilled to the stack in a JAL delay slot and reloaded immediately after, the spill location depends on whether it is a user-declared variable or a uopt temp:

1. A **user-declared** local pointer variable (e.g. `AlienInstance *sp1C`) is placed at the lowest available slot after `ra` (e.g. 0x18 if nothing else is declared first).
2. A **uopt temp** is placed at the bottom of the user area (e.g. 0x1C with 0x18 empty).

If the target has a pointer spilled at 0x1C with slot 0x18 empty (frame=0x28), the correct approach is to:
- Do NOT declare an explicit local pointer for the boss/target struct.
- Instead, access the struct inline using `(&alienInstances[idx])->field` notation.
- Declare any index variable (e.g. `u8 unk25`) as the ONLY user-declared variable - this reserves the 0x18 slot (keeping frame at 0x28) because it is NOT last in declaration order relative to the uopt temp region.
- The uopt temp for the boss pointer then lands at 0x1C (correct).

Java `func_802DFF90_1F8CA0` has the same pattern in a larger frame. An explicit parent pointer spilled at sp+0x4C and pushed the alien ID spill to sp+0x48. Retaining the `u8 parentId` local and accessing `alienInstances[parentId]` directly instead produced the target pointer spill at sp+0x50 and ID spill at sp+0x4C. Reuse the existing instance pointer briefly for the grandparent access, then restore it; adding a separate grandparent pointer reserves another slot and restores the incorrect spill offsets. A block-local skeleton/model index reproduces the target v0 loads. Halfword padding before the saved type index places it at sp+0x5C. Full ROM checksum verified `OK`.

Example: The pattern `AlienInstance *sp1C; ... sp1C = &alienInstances[unk25];` puts sp1C at 0x18 (wrong). Using `(&alienInstances[unk25])->field` inline lets the uopt temp land at 0x1C (correct).
