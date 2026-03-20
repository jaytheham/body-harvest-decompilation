### Float register allocation — statement order controls fp register assignment

IDO allocates fp registers in **C statement order**. The statement processed first gets lower fp register numbers. When a function has multiple float computations (`sp24`, `sp1C`, unk-update with a multiplication), the statement ORDER determines which values get f4, f6, f8, f10, etc.

Key insight: IDO's fp allocation fills registers from f4 upward for temp values. If all 8 positions f4/f6/f8/f10/f12/f14/f16/f18 are pre-allocated in a single statement's expression, the NEXT temp (a single-use intermediate float) gets f0 (going back to the lowest available). This is how the target can use f0 for a "throwaway" intermediate: all higher fp registers were claimed by concurrent live values.

**To get correct fp register allocation**: adjust statement order. The statement processed FIRST by the allocator gets f4, the second gets f6, etc. If the target uses f6 for value X and f8 for value Y, X's statement must precede Y's statement in the C source.

**Aliasing limitation**: When statement order `A, B, C` requires the compiler to hoist a load from statement C *before* a write from statement B, IDO conservatively refuses if the write address in B could alias the load address in C (even across different pointer arguments). To avoid deferred loads, ensure all reads from arg1->field occur in C statements that *precede* any writes to arg0->field when `arg1` and `arg0` are the same type.

**Struct byte field access** (`lb` at specific offset): When only the `low byte` of an `s16` struct field is needed (e.g., to check for a sentinel value like -2 stored in the low byte), use a direct byte cast in NON_MATCHING code: `((s8 *)arg1)[0xD]` generates `lb $t6, 0xD($a1)`. Do NOT split the s16 field into two s8 fields in the header, as this causes `lb`/`sb` instructions for ALL code that accesses that field, breaking existing matches.
