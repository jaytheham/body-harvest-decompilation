`incorrect ASM`: In `func_800868A4_95854`, inlining the float and double constants and trimming the old padding left the cosine save and reload at `sp+0x34`.

-> `code changed`: Store the angle in a one-element `f32` array declared after the cosine and its following padding word. Compute the angle in a separate assignment before calling `cosf` and `sinf`.

-> `correct ASM`: The frame is `0x58`, the angle is saved and reloaded at `sp+0x28`, and the cosine is saved and reloaded at `sp+0x30`.
