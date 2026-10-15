# Map texture generator: terrain fields and RGB argument expressions

For `func_80095F08_A4EB8`:

The target reads terrain type from bits 6-9 and requires bit 10 for both
the 4-11 range and type 13. Use the existing `TerrainObjectCell` view:

```c
if (D_80052A94[y].objects[x].flag11) { /* special pixel */ }
/* Otherwise compare .height against the water level. */
if (D_80052A94[y].objects[x].terrainObject) {
    tileType = D_80052A94[y].objects[x].terrainType;
    if (D_80052A94[y].objects[x].flag10 == 1 &&
        ((tileType >= 4 && tileType < 12) || tileType == 13)) {
        /* selected terrain color */
    }
}
```

Repeated direct field accesses share the initial halfword load and emit
the target's SLL/SRL bitfield extraction. A named cell pointer scores
worse. The matched writer `func_800B31FC_C21AC` uses the same terrain view.

The water blue component uses `(intensity * 15) << 4`, not
`(intensity * 240) << 4`. Inline all three water RGB argument expressions:
IDO shares the two equal red/green expressions without the extra copies
produced by named `c0` and `c2` locals. Keep the result in a word-sized
unsigned output local, followed by the halfword pixel store.

For ordinary terrain, keep the mask-row pointer and X offset local to the
non-water branch. The row is `((u8 (*)[64])D_8021EA30)[(y + 128) >> 2]`.
Use the same signed halfword intensity variable before and after the
height adjustment; a second shaded local emits another narrowing pair.
Pass intensity directly as the green parameter (the RGB function's
u16 parameter performs the mask). Read the blue mask from the row
directly rather than reuse the signed halfword mask used by red. This
restores the separate subtractions and the hoisted 256 in the target.

Use a raw post-decrement loop condition (`while (i--)`) to avoid the
extra SLTU produced by `while (i-- != 0)`. An explicit region if/else
for levels 32 and 6 restores the unconditional branch after level 32.

## Retain the constant loop-entry branch

A later partial draft of `func_80095F08_A4EB8` restored the target's `lui v0,1; beqz v0,...; li s6,0xFFFF` sequence with:

```c
i = levelLimit * 0 + 0x10000;
if (i--) {
    i = (i & 0) + 0xFFFF;
    /* Constant setup, followed by the existing do/while (i--) loop. */
}
```

`levelLimit` comes from the map-size global. Its zero product emits no multiplication but folds late enough to preserve the entry branch. Without the assignment inside the guard, the delay slot subtracts one from the initial counter. Assigning `0xFFFF` directly inside the guard lets IDO remove the branch again; retaining the zero dependency on `i` produces the target literal load. Both `i * 0 + 0xFFFF` and `(i & 0) + 0xFFFF` worked in the tested draft. The body still executes 65536 times.

The stock linked diff improved from 1812 to 1327, and the function length became exact. This is a partial result: floating-point allocation, load order, and other instructions still differ.
