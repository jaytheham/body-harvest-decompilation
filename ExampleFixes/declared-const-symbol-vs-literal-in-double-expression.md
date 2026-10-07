# A literal where the original read the file's own declared constant

**Symptom.** `asm-differ` reports a small odd score (5 = one row) on a large function whose every
other row already agrees: a single `%lo` difference on a `lui`/`ldc1` (or `lui`/`lwc1`) pair, with the
`%hi` halves identical.

Measured on `func_802D8D68_1F1A78` (java `1ED9E0.c`, 315 instructions, 1F1A78):

    TARGET:  lui at,%hi(D_802E0F58_1F9C68) ; ldc1 $f18,%lo(D_802E0F58_1F9C68)(at)   -> 0x802E0F58
    OURS:    lui at,0x802e                  ; ldc1 $f18,0xfa8(at)                    -> 0x802E0FA8

The C read the **literal** `4000.0`; IDO emits a float/double literal as a literal-pool entry and
places it wherever the translation unit's rodata lands (`0x802E0FA8` here - beside
`D_802E0FA0_1F9CB0`). The original source instead read the file's **own declared constant**:

```c
const f64 D_802E0F58_1F9C68[] = { 4000.0 };   /* 1ED9E0.c:341, extern in variables.us.h */
```

so the target's instruction names that symbol and lands on its mapped address. Writing
`D_802E0F58_1F9C68[0]` in place of the literal moved the score 5 -> **0** (one edit, gate PASSED).

**Rule.** When a small score is exactly one `%lo(…)` difference inside an otherwise identical
function, and the translation unit declares a constant holding that same value, replace the literal
with a read of the declared symbol (`X[0]` for the `f64[]` / array form used here). Do **not** try to
move the pool entry: the pool address is a function of the whole TU's rodata layout, and the declared
symbol already sits at the ROM's address.

**Where it comes from.** A sibling-overlay donor body uses a literal where the target overlay reads
its own constant, so a transplant that is otherwise mechanical carries this one row with it. The
normalised `.s` diff (`sed` keeps `%hi`/`%lo` symbol names) shows it as a symbol-vs-symbol difference
between the two overlays - e.g. here the greece donor's slot is `D_802DE400_196F10` and the java
target's is `D_802E0F58_1F9C68`; substituting the *name* is not enough when the donor spells the value
as a literal, because then there is no name in the donor's C to substitute.
