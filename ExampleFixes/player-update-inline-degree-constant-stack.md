`incorrect ASM`: In `func_800EC0D0_FB080`, generating the 180.0 literal in C with the original locals gives a 0x58 frame and places the coordinate outputs eight bytes too high. Removing the leading padding restores the frame and keeps the incorrect coordinate offsets.

-> `code changed`: Keep the leading two-word padding. Move the `UnkBuildingProp_80118774 *temp_v1` declaration into the unused `f32 pad` slot and remove its original trailing declaration. Retain the repeated angle conversion in the switch.

-> `correct ASM`: The frame is 0x50 and the coordinate arguments use sp+0x46, sp+0x44, sp+0x42, and sp+0x40. The complete function matches in both linked ROMs and IDO generates the double at its original address.
