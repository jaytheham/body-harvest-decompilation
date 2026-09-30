# Tentative BSS definitions and a folded byte increment

Matched `func_80007570_8170` with IDO 5.3 -O2 -mips2 -32.

With only external declarations, clearing a six-byte array loop produced an
extra `lui` between the two peeled stores. Assigning a constant to a `u64`
also emitted separate address loads for its high and low words, storing the
high word first. Signedness, scalar versus array declarations, explicit
64-bit literals, and local value or pointer temporaries did not fix this.

The target shares one `lui` for the peeled byte stores, and one for each
64-bit store pair, with the low word stored first. Local tentative definitions
give IDO enough information about the objects to reproduce these patterns.
`CORE_53F0_BSS`, defined before including the headers in `53F0.c`, enables
these definitions in `include/variables.us.h`:

```c
BitFlags64 D_8004DC48;
Flags2x32 D_8004DC50;
u8 weaponSlots[7];
```

The existing absolute linker symbols retain the intended addresses. Keep
other translation units using the external declarations, and verify the
whole ROM after introducing tentative definitions.

The second flag object needs a full-width reset, not just a write to its
high word. `Flags2x32` now provides a `u64 flags` union member alongside
its existing `s32 unk0` and `s32 unk4` views:

```c
D_8004DC48.unk0 = 1;
D_8004DC50.flags = 0;
```

After this, all instructions matched structurally, but temporary registers
after the first flag test differed. The counter is cleared before testing
three bits. Use `D_8004DC5C++` for the first set bit, rather than assigning
`1`. IDO folds that increment into `li; sb`, but its temporary allocation
differs from the direct constant assignment and matches the target.

Verification: function diff score 0 and `build/bh.us.z64: OK`.
