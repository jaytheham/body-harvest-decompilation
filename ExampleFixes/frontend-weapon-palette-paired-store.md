`incorrect ASM`: In `func_80071900_41DB0`, the ordinary `gDPSetTile` expansion produces separate word stores in the palette setup. The weapon byte occupies `t0` instead of `t1`, the tile cursor occupies `t1` instead of `t0`, and the first reciprocal conversion uses `t9` instead of `t6`. Store ordering, load-sync scheduling, and subsequent temporary registers leave 131 differing words despite the correct `0x30` frame and function length.

-> `code changed`: Keep the palette commands, but write this SetTile packet through a named cursor as one 64-bit `Gfx.force_structure_alignment` value:

```c
{ Gfx *tilePacket = D_8005BB2C++;
  tilePacket->force_structure_alignment =
      ((u64)(_SHIFTL(G_SETTILE, 24, 8) | _SHIFTL(256, 0, 9)) << 32) |
      _SHIFTL(G_TX_LOADTILE, 24, 3); }
```

The preceding tile-sync also uses a named packet cursor. Keep the integer `12 * scale` size calculations, the post-decrement inventory loop, and the existing graphics macros for the remaining commands. `Search-AsmPattern.ps1 -Offset 0x42008 -Count 4` found the same paired-store form in the already-matched 64-bit alien-flag update in `func_802DD244_1F5F54`.

-> `correct ASM`: IDO emits the high word in `t8` and low word in `t9`, then stores the low word before the high word. The reciprocal result uses `t6`, the weapon byte uses `t1`, and the tile cursor uses `t0`. The load-sync sequence and all subsequent temporary registers also match; all 131 differing words disappear. Normal native builds report `build/bh.us.z64: OK` and `build.eu/bh.eu.z64: OK`.
