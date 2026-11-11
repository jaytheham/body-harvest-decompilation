`incorrect ASM`: In `func_80128E48_137DF8`, capturing and advancing the render-mode packet cursor between endpoint calculations causes IDO to defer some endpoint arithmetic into the vertex writes and schedule several graphics constants early.

-> `code changed`: Pass `D_8005BB30++` directly to `gDPSetRenderMode` after the endpoint assignments. Replace the packet pointer's stack slot with four bytes of padding and keep only the first empty `if (1)` condition.

-> `correct ASM`: The three endpoint calculations finish before the first render-mode packet stores. The scale calculation uses the target `mul.s` and `div.s` sequence, and the Z endpoint retains its `sp+0x9C` spill. The cursor advance still needs to move later in the instruction schedule.
