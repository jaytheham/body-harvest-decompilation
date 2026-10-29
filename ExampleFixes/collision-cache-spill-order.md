`incorrect ASM`: In `func_8010D4EC_11C49C`, all instructions and registers match, but IDO caches the closest-corner array pointers at `sp+0x50/0x4C` and the center coordinates at `sp+0x58/0x54`. The target uses `sp+0x58/0x54` and `sp+0x60/0x5C`, respectively. Padding shifts other correct stack homes.

-> `code changed`: After `func_8010C4EC_11B49C(arg4)`, before reading the query coordinates, add empty tests to establish expression ordering:

```c
if (arg4->unk54 + arg4->unk4C) {}
if (closestCorner >= 0)
{
    if (D_80159D78[closestCorner]) {}
    if (D_80159D98[closestCorner]) {}
}
```

`closestCorner` is initialized to `-1`; the guard prevents an invalid negative array access. IDO removes every test without adding instructions. The field test alone fixes the center spills; the two guarded corner tests fix the pointer spills.

-> `correct ASM`: The pointer stores and reloads use `0x58($sp)` and `0x54($sp)`. The center stores and reloads use `0x60($sp)` and `0x5C($sp)`. The frame stays `0xE8`, the other stack homes remain exact, the function diff score becomes zero, and the normal build reports `build/bh.us.z64: OK`.
