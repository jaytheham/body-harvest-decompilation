### Word-sized stores to adjacent sub-word fields: use `*(s32 *)` cast

When assembly emits `sw $zero, N($v0)` to zero-clear two adjacent `s16` fields (or 4 padding bytes), IDO does NOT merge two adjacent `sh $zero` into a `sw`. To produce `sw`, use an explicit word cast:
`c
*(s32 *)&inst->fieldAtOffsetN = 0;
`
Confirm the field address is 4-byte aligned. Works for any paired s16 or byte fields at a word-aligned offset.
