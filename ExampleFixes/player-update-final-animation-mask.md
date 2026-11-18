`incorrect ASM`: In `func_800ED78C_FC73C`, the branch delay slot at `0xFD950` held `li a1,0xd`. The tracked-vehicle block also loaded the high half of `D_80159020` after its guard branch.

-> `code changed`: Load the final animation flags into `temp_v1` before testing bit `4`.

-> `correct ASM`: The delay slot at `0xFD950` emits `lui v0,0x8015` and the tracked-vehicle address setup starts at `0xFDDF4`, matching both target words. The ROM comparison has 20 fewer mismatched words.
