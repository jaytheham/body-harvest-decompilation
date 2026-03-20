### `s16` loop variables that get incremented need `s32` to avoid sign extensions in loop body

When a loop variable (counter or accumulator) is declared as `s16` and incremented (`var++`) inside the loop body, IDO 5.3 -O2 emits an extra `sll reg, reg, 0x10; sra reg, reg, 0x10` pair after each increment to ensure the register holds a valid sign-extended 16-bit value. This adds ~2 instructions per increment, inflating the loop size significantly (~500-1000 score penalty).

**Fix**: Declare the loop variable as `s32` (even if initialized from an `s16` expression). Use an explicit `(s16)` cast in the INITIALIZATION only (to preserve the sign-extension instruction that belongs in the prologue), not in the loop body.

```c
/* Instead of: */
s16 z0;
z0 = (ai->unk4 >> 8) - 1;  /* s16 → sign extension in init ✓ but also in loop ✗ */
/* ... */
z0++;                        /* IDO emits extra sll/sra pair */

/* Use: */
s32 z0;
z0 = (s16)((ai->unk4 >> 8) - 1);  /* (s16) cast → preserves sign extension in init ✓ */
/* ... */
z0++;                               /* no extra sign extension in loop ✓ */
```

**Key rule**: If the target assembly does NOT show `sll reg, 0x10; sra reg, 0x10` after incrementing a counter/accumulator in the loop body, declare that variable as `s32` with `(s16)` initialization if the prologue uses the sign-extension pair.

**Trade-off**: Changing a loop variable from `s16` to `s32` may cause IDO to allocate a 4-byte "phantom home" on the stack if the variable is initialized from a struct field expression (see "Named s32 locals cause phantom stack homes"). In practice, this inflates the frame by 8 bytes (due to 8-byte alignment) but is still better than the loop sign-extension penalty.
