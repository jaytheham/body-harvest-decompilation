### `bnel` loop + record walk (0xA stride)

When asm walks records with:

- `lhu` from current record
- `bnel` compare against function arg
- delay slot `i++`
- pointer increment by `0xA` in loop branch delay slot

prefer a `do { ... } while (...)` loop with a typed `u16*` pointer and `ptr += 5`.

Example shape:

`i = 0;`
`ptr = D_recordBase;`
`do {`
`    if (arg == *ptr) { callee(i); }`
`    i += 1;`
`    ptr += 5;`
`} while (i < D_count);`

Using `ptr += 5` (instead of byte casts) helps IDO emit `addiu ptr, ptr, 0xA` and keep the compare/increment ordering aligned with `bnel` delay-slot behavior.
