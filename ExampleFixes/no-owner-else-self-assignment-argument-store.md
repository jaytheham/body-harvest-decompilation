### Explicit else self-assignment preserves an argument home store

In `func_80014A3C_1563C`, the sound owner path calls a lookup and may
update or stop an existing sound. The no-owner path joins the code that
creates a new sound. IDO 5.3 needs this explicit branch to match:

```c
if (arg0 != 0) {
    node = func_800127CC_133CC(arg0, arg1);
    if (node != NULL) {
        /* Update an existing sound, returning when appropriate. */
    }
} else {
    arg1 = arg1;
}
```

Without the else, IDO hoists a redundant `sh a2,0xAE(sp)` before the owner
test and removes the branch after stopping an existing sound. With the
self-assignment, it emits that store in the no-owner block at ROM
`0x15CE4`, and the owner path branches over it at `0x15CDC`. This also
defers the lookup argument's `sll/sra/move` sequence from the volume
calculation into the pan calculation, matching the target scheduling.
Nested owner and node tests alone did not fix the differences.

The volume expression also needs the integer volume table on the left
of multiplication and the distance ratio on the right:

```c
vol = (s32)(D_80031F04_32B04[arg1] *
    ((D_80032430_33030[arg1] - arg2) / D_80032430_33030[arg1]));
```

Reversing these operands changes floating-point register allocation
throughout the remainder of the function. Keep the pan calculation's
double literals and unsigned temporary: they generate the target's
unsigned double-to-integer conversion block.

The node's raw offset stores can be represented by `s16 unk18` at
`0x18`, two padding bytes at `0x1A`, and `f32 unk1C` at `0x1C`, keeping
the node size `0x38` and allowing typed field access.

Verified with the full ROM build: `build/bh.us.z64: OK`.
