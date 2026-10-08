# Direct table fields and local stack gaps

`func_800DEB7C_EDB2C` matches when its vehicle spawn table fields are accessed directly through the two-dimensional array. Caching `&table[currentLevel - 1][vehicleType]` in a named pointer made IDO materialize the row adjustment with an extra `addiu`; direct field expressions fold that adjustment into the three byte-load displacements and restore the target instruction ordering and registers. The type field is signed (`lb`), like the three offsets.

After removing the table pointer, all instructions matched except several local offsets. An unused word declaration between the first two coordinate halfwords and the remaining locals preserves a four-byte hole present in the target. This moves the lower locals without changing the frame size or the compiler-generated floating-point spill slots. Removing another pointer used only after the allocator did not affect these offsets.
