# State switch, byte arguments, and generated ID spills

Matched `func_802DE594_1F72A4` with IDO 5.3 and verified the full ROM checksum.

For the parent state update, an `if (!(parentAlien->unk20 & 0x6000))`
reused one loaded parent pointer for both the flags read and the store.
A switch with only case zero reproduced the target's second pointer reload:

```c
flags = parentAlien->unk20;
switch (flags & 0x6000) {
case 0:
    parentAlien->unk20 = flags | (ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKD);
    /* Remaining state updates. */
    break;
}
```

Declare `parentAlien`, then the word `flags`, then the float sine value.
Follow those with the short angle, two byte child IDs, the three word
coordinates, and the word distance. This places the observed locals correctly
and moves the compiler-generated ID spill from `sp+0x4C` to `sp+0x50`.
An explicit word copy of `arg0` is unnecessary: direct `arg0` arguments to
`func_80137468_146418` retain the target word stores and reloads.

Load the two child IDs into separate `u8` locals before calling
`func_802DDA64_1F6774`. Inlining both field loads as call arguments delayed
the `arg0` byte reload until after the preceding state branch; the byte
locals put it before the branch, matching the target.

Keep the angle returned by `func_80003824_4424` in an `s16`, and put
`MAX((s16)(angle - heading), -(s16)(angle - heading))` in the combined
attack condition. A word angle changed the result register and constant
scheduling. Separate nested conditions with duplicated fallback calls
generated duplicate fallback blocks.

Pass the three word output coordinates directly to the short parameters
of `func_800CA5EC_D959C`. This generates the low-halfword stack reloads;
separate short coordinate copies generate unwanted loads and stores.

For experiment validation, require the build to reach the ROM checksum
comparison before diffing. A compiler, linker, or file-lock error leaves
the previous ROM in place, so a subsequent diff can report a stale score.
