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


## Counter-case: a literal read *inside a loop across calls* cannot simply become the symbol (measured)

The rule above is not unconditional. Measured on `func_8008F1E0_5F690` (`overlay_gameplay/frontend/52690.c:4625`,
213 instructions) the guess stood at **10** - exactly the two rows of one double:

    TARGET:  lui at,%hi(D_800AECE0_7F190) ; ldc1 $f24,%lo(D_800AECE0_7F190)(at)   -> 0x800AECE0
    OURS:    lui at,0x800b                ; ldc1 $f24,0x130(at)                    -> 0x800B0130 (the TU pool)

The source wrote `(temp_a0 * 3.14159265358979323846) / 180.0`; the ROM reads the file's declared
`const f64 D_800AECE8_7F198[1] = { 6.2831853070000001 }` and `D_800AECE0_7F190[1] = { 360 }`
(mathematically the same conversion - `x*2pi/360` - but two named doubles instead of two literals).
Both measure attempts, each after `make extract`:

| variant | score |
|---|---|
| committed guess (literals) | **10** |
| literals replaced by inline `D_800AECE8_7F198[0]` / `D_800AECE0_7F190[0]` reads | **10542** |
| + hoist both into declared `f64` locals before the loop | **1075** |
| + return twoPi/deg360 to the target's registers (assign in the target's order) | **355** |
| (best) committed guess, unchanged | **10** |

The two obstacles, both measured:

1. **The read is inside the loop and a call (`cosf`/`sinf`) sits between uses**, so IDO cannot keep the
   symbol load hoisted: the inline form reloads the double in every `if` arm and breaks the whole
   register map (10542). The symbol load must be hoisted into a local *by hand*.
2. **A hoisted `f64` local is charged a phantom 8-byte home each** - the frame goes `0xA0 -> 0xB0`
   (two locals, +16) with no `sdc1`/`ldc1` ever touching those slots, exactly the phantom-home family.
   The target keeps both doubles in the already-saved `$f22`/`$f24` with a `0xA0` frame, so its source
   did not pay for them. The preheader order also flips (`-500.0f`/`500.0f` are materialised *before*
   the two `ldc1`s in the target, after them in ours).

**Rule.** The declared-symbol substitution is only free when the value is read **once** (or inside a
straight-line expression). If the literal sits inside a loop that makes calls, the substitution buys
the correct `%lo` address but costs a hoisted local, and the local's phantom home changes the frame:
that is a worse trade than the 2-row residual. Check the frame and the callee-saved save set before
applying the rule - `%lo`-only residuals in this shape are **rodata-layout batch items**, not solo work.
