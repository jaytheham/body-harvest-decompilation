`incorrect ASM`: In `func_800DC5B8_EB568`, independent display-list packet locals reserve a `0x108` frame. The target reserves `0xF0`; its view vector starts at `sp+0xE4`, beam vector at `sp+0xC0`, strength byte at `sp+0xA0`, and color array at `sp+0x9C`.

-> `code changed`: Following the shared packet pointer in the matched shield renderer, reuse one `Gfx *gfx` for the initial pipe sync, combine command, render-mode command, and second pipe sync. Expand each texture-load macro while retaining its seven commands on one physical line, and reuse that same pointer for the pipe-sync command in both texture loads. Keep the double angle constant local, the four vector locals, and the word/halfword/byte declaration alignment.

-> `correct ASM`: The frame is `0xF0`. Both vectors, the strength byte, and the color array occupy their target offsets. This fixes the stack reservation; the complete beam function still has instruction scheduling and register differences.
