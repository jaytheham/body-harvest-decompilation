# Terrain object flags: byte stores followed by a halfword store

Matched `func_800B31FC_C21AC` with IDO 5.3 -O2 -mips2 -32.
The first candidate produced `build/bh.us.z64: OK`.

The target updates bits 15, 11, and 10 with three separate `sb` instructions,
then sets bits 9..6 to 12 with `lhu`, `andi 0xFC3F`, `ori 0x300`, and `sh`.
Use a two-byte struct of unsigned halfword bitfields, in this order:

```c
typedef struct {
    u16 terrainObject : 1;
    u16 unusedFlags : 3;
    u16 flag11 : 1;
    u16 flag10 : 1;
    u16 terrainType : 4;
    u16 height : 6;
} TerrainObjectCell;
```

Add `TerrainObjectCell objects[256]` to the existing terrain row union.
Then use a local pointer to `&D_80052A94[arg1].objects[arg0]` and assign
`terrainObject = 1`, `flag11 = 0`, `flag10 = 1`, and `terrainType = 12`,
in that order. IDO chooses byte accesses for the single-bit fields and a
halfword access for the field crossing the byte boundary. Bitfield writes
also reproduce the temporary-register allocation that explicit byte masks
can miss. The local pointer and row/column indexing match the target's
signed-byte coordinate extensions and shifts by nine and one.
