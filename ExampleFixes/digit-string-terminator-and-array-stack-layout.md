# Single-digit string terminator and array stack layout

`func_80071760_41C10` in `overlay_gameplay/frontend/40720.c` initially differed only at ROM offset `0x41CAC`: the target cleared `sp+0x4D`, while C cleared `sp+0x4C`. Later, both versions wrote the digit at `sp+0x4C` and passed that address to the text-width function.

This is a two-byte string: the digit followed by a null terminator. Use `u8 ch[2]`, initialize `ch[1] = 0` before the digit loop, assign each digit to `ch[0]`, and pass `ch` to the width function. A scalar character initialized to zero clears the wrong byte and leaves the string unterminated.

Replacing the scalar with the array initially grew the frame from `0x68` to `0x70`, moving the buffer to `sp+0x50` and the saved text width to `sp+0x4C`. Removing one obsolete unused byte local before the buffer restored the original frame and offsets. The matching declaration order retains one unused `s32` and two unused `s8` locals before the buffer.

The cleaned implementation uses a `while` loop for counting digits and passes the global character arrays directly. Full ROM verification reports `build/bh.us.z64: OK`.