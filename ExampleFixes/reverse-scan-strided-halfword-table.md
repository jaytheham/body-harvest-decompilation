### Reverse scan over strided halfword table

If a function compares one `s16` value per entry while stepping backwards by 8 bytes each iteration, model the table as a struct array with an `s16` first field and stride 8.

A form like `while (i--) { if (arg == entries[i].value) return 1; }` can produce the exact `lh` / `move v0, v1` / `addiu ptr, -8` / `bnez v1` loop shape that a raw pointer or byte-offset form may miss.
