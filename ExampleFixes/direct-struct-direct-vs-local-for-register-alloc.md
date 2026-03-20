### Direct struct access vs explicit local variable for register allocation

When accessing the same struct field multiple times (e.g., `alienInstances[arg0].unk20`):

- With explicit `s32 temp = ...`: named variable gets a lower-numbered register, struct pointer gets higher → causes register swap vs target
- With direct struct access (no local var): struct pointer gets the first temp register ($v0), loaded value gets the second ($v1) → matches IDO uopt allocation order
  When target shows `addu v0, ...; lw v1, N(v0)` (struct ptr in v0, value in v1), use direct access. When it shows the opposite, use an explicit local var.
