# Terrain neighbor indexing without byte pointer arithmetic

In BF9C0.c's four matching ring-scroll functions, the old neighbor expression
was `((u16 *)&((u8 *)sp5C)[temp_t9 * 2])[offset]`, with a `u16` index.
The matching typed-array replacement is:

```c
(&sp5C[(s32)temp_t9])[offset]
```

The signed cast preserves the original integer promotion of `temp_t9 * 2`.
IDO keeps the neighbor address separate from the central tile's
`sp5C[temp_t9]` address, reproducing the target's two shift/add sequences.
Without the cast, IDO merges those addresses and changes scheduling,
register allocation, and spills. Updating just one neighbor also breaks
address sharing: convert all five neighbor expressions in a function
consistently, then verify the complete ROM.

For terrain-height sampling, use the existing row union and its `col` array.
Anchor fixed offsets after the dynamic row or cell index, for example
`(&D_80052A94[zPosition >> 8])[1].col[xPosition >> 8]`. Moving the fixed
offset into the dynamic row expression can change code generation.

These replacements were verified with `tools/make.ps1`, producing
`build/bh.us.z64: OK`. Edits inside NON_MATCHING implementations still use
their assembly fallback and are not validated as matching C by that check.
