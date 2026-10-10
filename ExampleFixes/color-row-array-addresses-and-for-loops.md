# Three-byte color rows and loop scheduling

`func_800DFA98_EEA48` fills four RGB rows. Declaring its destination as
`s8 arg0[][3]` and storing `arg0[i][j]` produces separate source and destination
row-address calculations. Flattening both accesses to `i * 3 + j` lets IDO
share that multiplication, deleting instructions present in the target.

Keep the indices `s32`, with explicit byte-wrapped increments:

```c
for (i = 0; i < 4; i = (i + 1) & 0xFF) {
    for (j = 0; j < 3; j = (j + 1) & 0xFF) {
        /* Generate, clamp, and store the component. */
    }
}
```

Changing the indices to `u8` introduces extra induction variables. A
`do`/`while` outer loop and `while` inner loop instead schedule initialization,
the increment, and the final byte store differently.

Writing `table[i * 3 + j] + (random() % 120) - 60`, rather than putting the
random remainder first, fixes the temporary registers and operand order of
the sum. Keep the result `s16` before clamping to retain the sign extension.

Validated with the full ROM checksum OK and function diff score 0.

## HUD palette row caching

`func_8013A764_149714` uses two RGB palettes. Declare them as `u8 table[][3]`
and pass `table[state][0]`, `[1]`, and `[2]` to `gDPSetPrimColor`.
Keep `state` a scalar `u8`. IDO computes the three-byte row offset while
loading the weapon item, caches that offset, and spills it for the second
palette at sp+0x20. A named `s32 paletteState = state * 3` computes and moves
the offset too early, changing the opening color command's load order.
An array used to hold the state also prevents the desired reuse across the
Gfx stores; the scalar gives the compiler the necessary alias information.

A four-byte unused local after the scalar state selects sp+0x20 for the
cached offset. Removing it leaves the same instructions and frame size but
moves the spill/reload to sp+0x24. Standard `gDPSetPrimColor` macros replace
the handwritten command and expanded shifts without changing codegen.

Preserve trailing data when reshaping a palette. This function's second
palette symbol includes unused bytes after its three colors. Its 27-byte
row array plus one compiler alignment byte reproduces the original 28 bytes.
Validated with the full ROM checksum OK and function diff score 0.
