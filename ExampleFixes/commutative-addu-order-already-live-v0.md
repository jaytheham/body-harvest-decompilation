### Commutative `addu` operand order when one operand is already live in v0

When computing `unk10 + unk3E` where `unk10` is already live in v0 (from a preceding `slti v0` check) and `unk3E` is freshly loaded into t6, IDO generates `addu dst, t6, v0` (t6 first). But the **target** may have `addu dst, v0, t6` (v0 first).

**Fix**: write the expression with `unk3E` first in C: `(s16)(alienSpecs[specIndex].unk3E + alienInstances[arg0].unk10)`. Despite the "wrong" C order, IDO evaluates the already-live v0 as `rs` (first) because it's the operand with the longer live range. Score change: 10 → 0.

This is the **opposite** of the non-commutative subtraction case: for `unk10 - unk3E`, the C order IS preserved (`subu dst, v0, t_reg`).
