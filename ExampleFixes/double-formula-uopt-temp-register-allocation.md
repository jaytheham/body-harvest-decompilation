### Double-precision formula with uopt temp for struct field value across jal

When a function:
1. Accesses `element->unk0` and `element->unk4` before a jal (coss call)
2. Uses `element->unk4` again after the jal in a subsequent formula (sins formula)
3. Has 4 "dead" padding s32 variables for frame extension

The compiler generates `lh v1, 4(v0)` (unk4 into v1) and `sw v1, 0x20(sp)` in
the jal delay slot, then reloads `lw v1, 0x20(sp)` after the jal.

The critical register pattern (target) is:
- v0: element pointer (uopt temp from `alienInstances[arg0->unk8]` indexing)
- v1: element->unk4 value (uopt temp, pre-saved before jal)
- t1: specIndex (transient)
- t2: element->unk0 (user variable sp24)

**The problem**: Declaring sp20 explicitly as a 6th user variable ALWAYS shifts
specIndex from t1→t0 (one register lower), failing the match.

**What works partially**: Declaring only 4 padding s32 vars + sp24 (5 user vars)
gives correct int registers (specIndex=t1, sp24=t2). But with no declared sp20,
the compiler re-derives element->unk4 post-coss rather than pre-caching it.

**Key insight (unresolved)**: The target requires sp20 to be a **uopt temp** (not
a user-declared variable) that:
- Gets register v1 as second uopt temp (after element ptr in v0)
- Is pre-loaded from element->unk4 BEFORE the coss call
- Is saved to stack in the coss jal delay slot
- Is reloaded from stack for the sins double formula

This uopt auto-pre-caching behavior for a field VALUE (not pointer) across a
function call could not be triggered through any C expression form tried.

**For the D_800481A6 reference**: The sins formula argument uses a byte-base
approach: `sins(*(u16*)(&D_800481A6 + arg0->unk8 * 0x50))` where
`D_800481A6` is declared `extern u8 D_800481A6` pointing to `alienInstances[0].unkE`.
The compiler re-derives this index access using D_800481A6 as absolute base,
producing `lui a0, %hi(D_800481A6); ..multiply..; lhu a0, %lo(D_800481A6)(a0)`.

**Remaining issues at score 1450**: mul.d operand order swapped (f18,f16 vs
f16,f18), trunc.w.d destination register (f18 vs f16), and all int registers
shifted by 1 due to sp20 being declared as user var vs uopt temp.
