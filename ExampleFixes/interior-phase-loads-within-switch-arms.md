`incorrect ASM`: `func_80078AD4_160B94` caches D_800E66A4 in v1 before dispatch, adding a global load to the range-guard delay slot and removing the target loads inside individual cases. The function is 0x20 bytes too short.

-> `code changed`: Remove the cached phase local and read D_800E66A4 directly in each case condition. Remove the associated jump-table placeholder when enabling the C switch.

-> `correct ASM`: Cases 1 and 3 load the phase into temporary registers, while cases 2 and 4 share a v1 load only within their own arms. The range guard has its target shift delay slot, the generated table occupies 0x800A4B5C, and all function bytes and the full US ROM checksum match.
