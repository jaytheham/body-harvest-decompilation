### Save-and-sum global struct array with pointer sub-index pattern

When a function:
1. Stores a field into `D_80052A98[currentLevel - 1]`
2. Returns the sum of a field across all levels

The target assembly uses the pattern:
```asm
lui     a1, hi(D_80052A98)
addiu   a1, a1, lo(D_80052A98)   # a1 = base ptr
sll     t9, currentLevel_reg, 3  # currentLevel * 8
addu    t0, a1, t9               # store address
li      v0, 2                    # SCHEDULED EARLY as pipeline filler
sw      field, -8(t0)            # store to [currentLevel-1]
lui     v1, hi(D_80052A98)
lui     t1, hi(D_xxx)
sll     t2, v0, 3                # 2 * 8 = 16
lw      t1, lo(D_xxx)(t1)        # D_80052AA0 (= D_80052A98[1].score)
lw      v1, lo(D_80052A98)(v1)   # D_80052A98[0].score (fresh reload)
addu    a0, a1, t2               # a0 = ptr = D_80052A98 + 2
lw      t3, 0(a0)                # ptr[0].score
lw      t4, 8(a0)                # ptr[1].score
...
```

Key features:
- `a1` is used as the SHARED base register for BOTH the store address and the ptr computation
- `v0 = 2` is scheduled early (as pipeline filler) for the `sll t2, v0, 3` that computes ptr offset
- `D_80052A98[0].score` and `D_80052AA0` are freshly loaded via `lui/lw` after the store (because the store may have written to these elements if currentLevel=1 or 2)
- Elements D_80052A98[2..5] are loaded through the `a0` ptr register

**Closest matching C code (score ~740, NON_MATCHING):**
```c
s32 func_8012FFB0_13EF60(void) {
    s32 start = 2;
    Unk80052A98 *ptr = D_80052A98 + start;
    D_80052A98[currentLevel - 1].score = D_80052B2C->unk30;
    return D_80052A98->score + D_80052AA0 + ptr->score + (ptr+1)->score + (ptr+2)->score + (ptr+3)->score;
}
```

**Why it doesn't fully match:**
IDO constant-folds `D_80052A98 + start` (with `start=2`) into the constant address
`0x80052aa8`, generating `lui a0; addiu a0, a0, 0x2aa8` instead of the target's
`li v0, 2; sll t2, v0, 3; addu a0, a1, t2` (base + index * sizeof).

For the target's approach to be generated, IDO would need to NOT constant-fold
`D_80052A98 + 2*sizeof(Unk80052A98)`, which only happens when:
- `start` is genuinely a runtime variable (not a compile-time constant 2), OR
- The function has MULTIPLE STORES using the same base (like `func_80070390_40840`
  which stores score + humansKilled + secondsElapsed — in that case `v0` holds
  the shared store address across all 3 stores and is later reused for `li v0, 2`)

**Variants that generate worse scores:**
- `ptr[0].score + ptr[1].score + ...` (array syntax) → score 1175 (IDO eliminates ptr entirely)
- `ptr->score + (ptr+1)->score + ...` without early ptr init → score 975 (ptr stays as register but loaded via fresh lui rather than shared base)
- `(D_80052A98 + 2)->score` repeated 4x → score 1175 (GVN CSE still can't prevent constant folding)

**Analog function:** `func_80070420_408D0` (secondsElapsed version) has the SAME structural target pattern and is also NON_MATCHING for the same reason.
