`incorrect ASM` -> In `func_802DE0F4_322244`, the byte passed to the attack-state call and copied into the actor state used `sb/lbu` at `sp+0x5B`. The target uses `sp+0x4F`.

`code changed` -> Declare `sp4F` after the two joint pointers and the word argument cache. Keep those three word-sized declarations together.

`correct ASM` -> The mode stores and reloads use `sp+0x4F` with the same `0xA8` frame. The pointer homes and instruction order still differ elsewhere in the function.

`incorrect ASM` -> The attack height check at `0x322724` and `0x322728` put the actor's height in `v1` and the player's height in `v0`.

`code changed` -> Use `alienInstances[arg0].unk2` directly for both bounds of the height predicate. Keep the existing actor pointer for the other accesses.

`correct ASM` -> The actor height loads into `v0` and the player height into `v1`. Both comparisons use those target roles.
