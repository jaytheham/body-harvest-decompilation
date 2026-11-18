`incorrect ASM`: In `func_800ED78C_FC73C`, the later branch at `0xFD3E8` emitted `bgtzl t9,fd44c`.

-> `code changed`: In the vehicle-exit fallback, use `sp90 = arg0->unk2 + (s32) D_80157600.unkC` so the coordinate is the left operand of the addition.

-> `correct ASM`: The branch emits `bgtzl t7,fd44c`, matching the target word. The linked ROM has ten fewer mismatched words overall.
