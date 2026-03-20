### Register allocation: control which struct field gets loaded first in a branch

When inside a branch body two struct fields must be loaded (e.g., `inst->unkXX` and `inst->unkYY` for an array index + bit-shift computation):

- IDO evaluates expressions left-to-right; the **first evaluated sub-expression** in a statement gets the lowest free register (e.g., `a0` if the arg register was freed by prior use).
- If target shows `lbu a0, offsetA(v0)` BEFORE `lbu tN, offsetB(v0)`, field A must appear as the FIRST sub-expression evaluated.
- Key trick: if you need field A first but also want a named local, **assign the named local to field A**, then reference field B inline.
  - Example: target loads `unk39` into `a0` first, then `unk27` into `t2`, for `alienInstances[unk39].unk27 &= ~(1 << unk27)`.
  - Wrong: `shift = inst->unk27; alienInstances[inst->unk39].unk27 &= ~(1 << shift);` (unk27 loaded first)
  - Correct: `shift = inst->unk39; alienInstances[shift].unk27 &= (u8)~(1 << inst->unk27);` (unk39 loaded first)
- A declared variable that is **never used** is optimized away by IDO; it does NOT consume a register slot.
- For array/stride prologue: adding a `u8` local that is actively used inside the branch takes the `a1` slot, pushing compiler-generated base/stride temps to `a2`/`a3`.
