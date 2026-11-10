`incorrect ASM` -> In `func_802DC8F4_320A44`, the node pointer used `sp+0x60` and the word actor argument used `sp+0x5C`. The type pointer already used its target home at `sp+0x58`. IDO reserved a word for the actor-array address ahead of the two integer caches even though that address ultimately stayed in `s0`.

`code changed` -> Reuse `sp60` for the final X difference after its last use as an actor argument. Remove the old `dx` declaration. Read the clamp level in an empty condition immediately after the initial sound call so the optimizer requests its word slot before the type pointer.

`correct ASM` -> The node and actor caches use `sp+0x64` and `sp+0x60`. The type pointer still uses `sp+0x58`, and the frame stays `0xE0`. The remaining two differences are the double store and reload for the signed acceleration at `0x320C90` and `0x320CC0`. They use `sp+0x50` where the target uses `sp+0x48`.

`incorrect ASM` -> The compiler reserves the alien type pointer at frame offset `-136`, the acceleration double at `-144`, and a later four-byte temporary for the terrain-height shift at `-148`. The double store and reload use `sp+0x50`.

`code changed` -> As an allocator control, add `if ((f32)maxSpeed * (f32)maxSpeed) {}` immediately before each of the two trig calls in the acceleration branch.

`correct ASM` -> The private IDO trace shows the control reserving a four-byte slot at `-140` before the double, which aligns the double to `-152`. The terrain-height temporary reuses `-140`. The frame stays `0xE0` and the double store and reload use `sp+0x48`. The control also emits a float multiply and a store for the additional value, so the guarded draft retains its original two-word difference.
