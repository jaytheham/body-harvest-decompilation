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
