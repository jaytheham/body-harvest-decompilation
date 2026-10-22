`incorrect ASM`: `func_8008DC34_5E0E4` has the exact instructions but a `0x28` frame and its configuration-pointer spill at `sp+0x1C`. Both a named configuration pointer and direct `D_800AA694[arg3].unkN` accesses retain this excess storage.

-> `code changed`: Remove the named pointer and use `((Unk800AA694Entry *)&D_800AA694[arg3])->unkN` for each configuration field. The redundant typed-address cast changes CFE's temporary allocation while retaining struct access. Declare the color table as `u8 D_800AA724[][4]` and access its rows directly.

-> `correct ASM`: The frame becomes `0x20`, the pointer spill and reload use `sp+0x18`, and all argument homes match. The function diff scores zero and the complete US ROM checksum passes.
