Incorrect ASM: `func_8009BF64_AAF14` starts with `li at,60; div a2,at` and omits the target's delayed division exception checks. Declaring the digit byte before the minutes byte also stores minutes at `sp+0x46` instead of `sp+0x47`.

-> Code changed: declare `u8 minutes` before `u8 digit`. Set a byte `divisor = 60`, retain `if (divisor) {}` before `minutes = arg0 / divisor`, and compute the remainder with the literal `arg0 %= 60`. Using the divisor local for both operations instead caches `0xE7000000` in `ra` and assigns the divisor to `t5`.

-> Correct ASM: `sw ra,0x14(sp); li ra,60; div a2,ra; mflo t6; sb t6,0x47(sp); mfhi t7; ... sh t7,0x4A(sp)`, followed after the graphics setup by the target's `bnez ra`, zero-divisor and signed-overflow checks. The complete function diff is empty and `tools/make.ps1` reports `build/bh.us.z64: OK`.
