`incorrect ASM`: In `func_8011D4FC_12C4AC`, retaining a separate building index and using both matrix-command macros reserves a 0xD0 frame instead of 0xC8. Sharing a packet pointer among three commands fixes the frame but assigns the building-type pointer to T0 instead of V1, changing the later display-list packet registers too.

-> `code changed`: Index `buildingTypes[value & 0x7F]` directly and reuse one `Gfx *gfx` for only the two matrix commands surrounding `guOrtho`. Keep each packet's two word assignments on the same physical source line. Define the building-type pointer before the validation branch so IDO can place its address calculation with the transform setup.

-> `correct ASM`: The frame is 0xC8, the building-type pointer uses V1 and spills at sp+0x34, the packed word spills at sp+0x3C, and the five callback packet pointers retain sp+0x60 through sp+0x50 and their target registers.

`incorrect ASM`: The final `if (D_8015EA28 == value)` produces `lui t8,0x8016; lbu t8,-0x15D8(t8); lw t7,0x3C(sp)`, reversing the target temporary registers. Reversing the written comparison operands does not fix the loads. Writing the subtraction directly inside the condition changes register allocation elsewhere.

-> `code changed`: Reuse the existing word local with `value = D_8015EA28 - value; if (value == 0) { ... }`.

-> `correct ASM`: IDO eliminates the subtraction and emits `lui t7,0x8016; lbu t7,-0x15D8(t7); lw t8,0x3C(sp)` followed by the target `bne t7,t8`. Every instruction in the function matches.
