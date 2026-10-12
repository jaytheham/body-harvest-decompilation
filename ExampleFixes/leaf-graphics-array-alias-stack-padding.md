### Leaf graphics stack slots: remove an array alias before changing declaration order

`func_800FC568_10B518` compiled with the correct instructions and a 0x38 frame, but a compiler-generated graphics packet spill used `sp+0` instead of the target `sp+4`. Changing graphics macros, inserting scopes, and adding locals did not solve both stack slots.

Use `D_801593F0[counter].pos` directly instead of a local alias for the point array. Removing the alias preserves every instruction and register and moves the graphics packet spill to `sp+4`. It also moves the saved initial vertex pointer from `sp+0x2C` to `sp+0x30`. Declare the signed halfword counter before `Vtx *startVtx` to restore that pointer to `sp+0x2C`. These two changes together match; evaluating either change alone obscures the stack-layout improvement.

Retain `counter = 12; while (counter--)`, direct global vertex-buffer field writes, ascending line commands, and the raw saved vertex pointer in `gSPVertex` (the target has no physical-address mask there). Function diff score 0 and `build/bh.us.z64: OK` verified.
