# Pointer casts can change IDO's indexed-member operand weighting

`func_800A4C28_B3BD8` reached a diff score of 20 with every instruction matching
except two `mul.d` instructions. The target used `f16,f0`; the candidate used
`f0,f16`. Swapping the multiplication operands in C did not change the output.

The radius was an indexed struct member, `alienTypes[typeIndex].unk24`.
Giving that access an explicit pointer cast changed the front-end expression
weight without changing the address calculation:

```c
/* Reversed multiply operands. */
((f32)sinDirection / 32768.0) * alienTypes[typeIndex].unk24

/* Matching multiply operands. */
((f32)sinDirection / 32768.0) *
    ((AlienType *)&alienTypes[typeIndex])->unk24
```

For the cosine coordinate, the node access also needed the same treatment,
and the product needed to appear before the node offset:

```c
((f32)cosDirection / 32768.0) *
    ((AlienType *)&alienTypes[typeIndex])->unk24 +
    ((Unk8014DD50 *)&D_8014DD50[nextNode])->unk4
```

Named type/node pointers also fixed the arithmetic, but added stack homes and
enlarged the frame from `0x88` to `0x90`. The explicit casts preserve struct
access and avoid those homes. Casting through `void *` was unnecessary.
Comma expressions around the normalized trig values fixed operand order too,
but introduced double temporary homes and enlarged the frame to `0x98`.

This agrees with the indexed-versus-member weighting described in the
workbench's IDO 5.3 compiler law L92. The exact cast spelling above was verified
with a zero function diff and a full-ROM `build/bh.us.z64: OK`.

Other useful details in this function:

- A `u16` angle negated as `(s16)-(u32)direction` avoids keeping a promoted
  signed word across calls. Plain negation introduced an extra word spill;
  the target reloads the angle with `lhu`.
- An unused halfword before the sine/cosine locals puts the saved sine at
  `sp+0x4c` while preserving the compiler's pointer spill slots.
- Redundant `(s8)` casts on the first sibling-node arguments are required to
  retain the target's packed byte stores/reloads. Removing them changes the
  compiler's treatment of that local across calls.
- The two tables addressed with a 16-byte stride can be declared `s16 [][8]`
  and accessed as `[index][0]`, replacing byte-pointer arithmetic.
