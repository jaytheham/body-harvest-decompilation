`incorrect ASM`

In `func_80080FD8_169098`, the normalized trig argument used `sw a0,0x20(sp)` / `lw a0,0x20(sp)` while every instruction and other stack location matched. The two signed angle locals followed the collision result, reserving the word at `sp+0x24`.

-> `code changed`

Move both `s16 angle` and `s16 yaw` declarations into the position of the unused upper `f32 sp74` declaration, removing that unused float and their old declarations. Keep the typed `Vec3f delta`, `Vec3f origin`, and `Unk8007CAA8_6A40 collision` locals in order. The helper returns `void`; compute its signed player-relative yaw once before the guard.

-> `correct ASM`

The frame remains `0x88`, all vector/result locations remain unchanged, and the normalized argument uses `sw a0,0x24(sp)` / `lw a0,0x24(sp)`. Function diff is zero and the full US ROM checksum passes.
