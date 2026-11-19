`incorrect ASM` — In `func_800ED78C_FC73C`, the turn-difference calculation used `sra t8,t7,0x10` at US ROM offset `0xFD888` and passed the truncated value with `move a3,t8` at `0xFD8A0`.

-> `code changed` — Widen the enter-vehicle effect's cached X coordinate to `s64` and narrow it to `s32` before assigning the coordinate. Widen the player-state flags to `s64` before masking out the swimming bit. Use the direct final animation flag assignment and mask.

-> `correct ASM` — The turn calculation uses `sra t2,t7,0x10`, and its call delay slot uses `move a3,t2`.
