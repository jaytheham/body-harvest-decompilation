`incorrect ASM` -> In `func_802DC8F4_320A44`, the node pointer used `sp+0x60` and the word actor argument used `sp+0x5C`. The type pointer already used its target home at `sp+0x58`. IDO reserved a word for the actor-array address ahead of the two integer caches even though that address ultimately stayed in `s0`.

`code changed` -> Reuse `sp60` for the final X difference after its last use as an actor argument. Remove the old `dx` declaration. Read the clamp level in an empty condition immediately after the initial sound call so the optimizer requests its word slot before the type pointer.

`correct ASM` -> The node and actor caches use `sp+0x64` and `sp+0x60`. The type pointer still uses `sp+0x58`, and the frame stays `0xE0`. The remaining two differences are the double store and reload for the signed acceleration at `0x320C90` and `0x320CC0`. They use `sp+0x50` where the target uses `sp+0x48`.
