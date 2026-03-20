### Struct array access patterns

For arrays of small structs (e.g., 0xA/10 bytes), accessing via pointer vs direct array indexing affects codegen:

**Pointer pattern:**

\\\c
Unk8014D298 \*entry = &D_8014D298[index];
entry->unk0 = value0;
entry->unk8 = value8;
// Keeps base in register v1
\\\

**Direct access pattern:**

\\\c
D_8014D298[index].unk0 = value0;
D_8014D298[index].unk8 = value8;
// May recalculate base each time
\\\

The pointer pattern is generally closer to original code when you see the assembly compute a base address once and reuse it for multiple stores.
