`incorrect ASM`: In `func_80124D60_133D10`, the light helper receives the position at `sp+0xE0` and RGB at `sp+0xDC`.

-> `code changed`: Move the line pass's `alpha` and `point` declarations before the light buffers in the function's local declarations. Leave their assignments in the line pass.

-> `correct ASM`: The light helper receives the position at `sp+0xD8` and RGB at `sp+0xD4`, with all five coordinate and channel stores using their target stack offsets. The frame remains `0x118` bytes and the fade vector remains at `sp+0xEC`.
