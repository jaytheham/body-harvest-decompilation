`incorrect ASM`: In `func_800ED78C_FC73C`, a single capture flag mask led IDO to emit `lw t6,0(a3)` at ROM offset `0xFD990` and `bnez t6,...` at `0xFD99C`.

-> `code changed`: Apply `VEHICLE_FLAG_CAPTURED_BY_ALIEN` to the already masked capture flag in the airborne animation fallback.

-> `correct ASM`: The two instructions use `t9` as in the ROM. The function stays the same size, and the total number of differing instruction words falls from 695 to 664 in both versions. Other instruction differences remain.
