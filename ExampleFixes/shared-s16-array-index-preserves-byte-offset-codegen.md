`func_800FB4A0_10A450`: explicit byte-offset stores already produced matching ASM (`sll v1,v0,1`, then three `addu` / `sh` pairs)
-> replace `offset = index * 2; *(s16 *)((u8 *)array + offset) = value;` with `array[index] = value;` for each existing `s16` array, retaining one shared `s32 index` local
-> identical ASM (`sll v1,v0,1`, then the same three `addu` / `sh` pairs); US and EU ROM builds remain byte-for-byte matching.
