`incorrect ASM`: In `func_800ED78C_FC73C`, the animation timer base at `0xFDEDC` was loaded with `lui v0,0x8015`.

-> `code changed`: Assign `D_801575D0` to the existing `temp_v1` in the comparison against `0x63`.

-> `correct ASM`: The timer base load emits `lui v1,0x8015`, matching the target word. The function keeps the same size and has nine fewer mismatched words.
