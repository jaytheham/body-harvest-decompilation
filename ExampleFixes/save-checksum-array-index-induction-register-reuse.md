# Array-index induction reuses the header address register

`validateSaveVersionAndChecksum` in `src.us/core/1050.c` initially had the correct
instructions but used `a2` for the header address and `a3` for the version and
stored checksum. The target uses `v0` for both header and payload traversal,
and `a2` for the version and stored checksum.

A named byte pointer, advanced by four bytes after reading the header and by
one byte inside the loop, kept the header address and loop cursor in different
registers. Separate header/payload pointers and typed struct views also retained
that difference.

Use the byte-offset parameter as an array induction variable instead:

```c
stored_checksum = D_800431C0[arg0 + 2]
    + (D_800431C0[arg0 + 3] << 8);
arg0 += 4;
computed_checksum = 0;
for (i = 0; i < arg1; i++) {
    computed_checksum += D_800431C0[arg0];
    arg0++;
}
```

Keep `stored_checksum`, `computed_checksum`, and `i` as `u16`. IDO strength
reduces the changing array index to a pointer walk and uses `v0` for the address
throughout the function. This also frees `a2` for the version/checksum values.
The C stays expressed entirely through array access.

The final comparison is `stored_checksum != computed_checksum`; reversing
these operands reverses the target's `beq a0,a2` operand order for these types.
Moving the pointer increment into the `for` update expression also changes
loop instruction scheduling, so keep `arg0++` inside the body.

Verified with `tools/make.ps1`: `build/bh.us.z64: OK`, and no differences from
`tools/diff.ps1 validateSaveVersionAndChecksum func_800016D8_22D8`.