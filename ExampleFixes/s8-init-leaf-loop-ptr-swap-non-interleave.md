### s8 initialized-declaration + pointer initialization: volatile register interleaving limitation

When a leaf function walks a fixed-size struct array using a do-while/goto loop where:
- A named `s8 temp_v0` holds the loaded byte value → mapped to `$v0`
- A named `StructType *var_v1` holds the array pointer → mapped to `$v1`
- An end sentinel (from the goto condition `!= &D_END`) is cached in `$a1`

The **best achievable** C pattern is:

```c
void func(s16 arg0) {
    if (!(globalArray[0].button & 0x10)) {
        s8 temp_v0 = D_ARRAY_START.field;   /* inline s8 init → v0 (first allocated, from lb result) */
        StructType *var_v1 = &D_ARRAY_START; /* inline ptr init  → v1 (shared address CSE) */
    loop:
        temp_v0 = var_v1->field;
        if (arg0 < temp_v0) {
            var_v1->field = (s8)(temp_v0 - arg0);
        } else if (temp_v0 < -arg0) {
            var_v1->field = (s8)(temp_v0 + arg0);
        } else {
            var_v1->field = 0;
        }
        /* ... similar for second field ... */
        var_v1++;
        if (var_v1 != &D_ARRAY_END) goto loop;
    }
}
```

**Why the s8 init works for register allocation:**
- `s8 temp_v0 = D_ARRAY_START.field` is the first inline-initialized declaration → IDO assigns v0 to the lb result (matching `func_80079E64_88E14` pattern where `u8 state` came before `AlienInstance *ai`)
- `StructType *var_v1 = &D_ARRAY_START` shares the same base address computation (CSE) → IDO assigns v1

**Why the goto form (not do-while) is needed:**
- A plain `do { ... } while (ptr != end)` triggers IDO's loop-unrolling analysis: it computes `(end - start) / sizeof` checking `24 % 12 == 0`, and generates 2x-unrolled code (score ~4400)
- A `goto loop` structure bypasses IDO's loop-recognition pass → no unroll check

**Residual 30-point scheduling difference:**
The completed assembly setup is:
```asm
lui  v1, hi(D_ARRAY_START)
lui  a1, hi(D_ARRAY_END)
addiu a1, a1, lo(D_ARRAY_END)   ; ← TARGET has a1 first
addiu v1, v1, lo(D_ARRAY_START) ; ← TARGET has v1 second
lb    v0, 2(v1)                 ; initial (hoisted) load
```

But the C code above generates **v1 addiu first, a1 addiu second** — a persistent 30-point difference.

**Root cause:** The hoisted `lb v0, 2(v1)` immediately following the loop setup creates a dependency that propagates through IDO's scheduler: `addiu v1` must complete before `lb`, so IDO schedules `addiu v1` first. The `addiu a1` (end sentinel, only needed at the `bnel` far later) has lower scheduling priority.

**Attempted fixes that do NOT work:**
- Comma operator: `var_v1 = &D_ARRAY_START, end = &D_ARRAY_END;` — the lb dependency overrides the right-side-first comma scheduling
- Declaration reordering, single-line declarations, block-scoped variables, volatile — all fail to overcome the lb→v1 dependency
- The comma interleaving trick from `lui-addiu-interleaved-two-pointers.md` only works reliably for **callee-save (s) registers** in functions with JAL calls — NOT for volatile (v/a) registers in leaf functions

**Conclusion:** For a leaf function matching `lb v0, 2(v1)` fused with the pointer setup in `bnel v1, a1`, score 30 may be the minimum achievable from C without the permuter.
