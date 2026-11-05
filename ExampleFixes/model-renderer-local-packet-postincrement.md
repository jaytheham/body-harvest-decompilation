`incorrect ASM`: In `func_800CDDE4_DCD94`, `gfx = D_8005BB2C++; gDPSetRenderMode(gfx, ...)` reproduces the logic and stack layout but uses `t1/t2` for the texture-LUT cursor and command instead of `t2/t3`. The render-mode command also loads and stores its first word before its second word.

-> `code changed`: Pass `gfx++` to the render-mode macro after capturing the global packet cursor. The advanced local cursor is unused, so this preserves the display-list contents and global cursor update.

-> `correct ASM`: Every instruction and register matches from the prologue through ROM `0xDCEC4`, including the second-word-first render-mode packet. An observational UOPT trace shows an additional cached packet-pointer web in `t1`; UGEN consequently omits both `t0` and `t1` from its temporary register ring. The function remains NON_MATCHING with register-only differences beginning at the rotation constant at `0xDCEC8` (diff score 210 versus the original 370).
