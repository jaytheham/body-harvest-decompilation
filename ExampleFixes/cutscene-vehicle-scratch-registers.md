`incorrect ASM`: In `func_800F066C_FF61C` at US offset `0xFF794`, the vehicle array base used `lui t6,0x8005` and the index calculation started with `sll t9,t7,0x2`.

-> `code changed`: In the preceding building case, promote `building->xCoord` and the Y local through `(s32)(s64)` before their arithmetic right shifts. Keep the vehicle case unchanged.

-> `correct ASM`: The vehicle array base uses `lui t9,0x8005` and the index calculation starts with `sll t8,t7,0x2`. The full vehicle case matches in the US and EU ROMs.
