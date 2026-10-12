# A wrapped body's recorded `// CURRENT(n)` is a record, not a measurement

A function still under `#ifdef NON_MATCHING` is not compiled - the build assembles its `GLOBAL_ASM`
instead - so its recorded `// CURRENT(n)` is whatever the last attempt measured, and the committed
body may since have become byte-exact. In the other direction it may no longer even compile.

**Symptom.** The only lever left is deleting the guard.

`func_8011EFBC_12DF6C` (`src.us/overlay_gameplay/outside/buildings.c`, 58 instructions) carried
`// CURRENT(170)`. Unwrapped, it measures **0** on the first `check`; a fresh-object build gates with
the ROM sha1 unchanged; moving one body literal (`objIndex == 0x4F` -> `0x50`) moves the sha1
(`bbb6666f...` -> `f16b1aac...`), which is the control that separates a real match from a phantom `0`.

**How to find them.** Sweep every wrapped body in an area, in **marker order ascending** - unwrap,
`check`, `git checkout --` the file, next. ~3-12 s per candidate; a whole area is a few hundred
candidates. `scripts/sweep_wrapped_bodies.py` does exactly this in name order.

Do **not** filter the sweep to low markers. The instance above sat at 170 and was surfaced inside the
first 30 candidates of a marker-ordered pass. The two instances now recorded in `outside` -
`func_80091AC0_A0A70` (marker 40) and `func_8011EFBC_12DF6C` (marker 170) - were each found by a
different sweep pass, so the class is sparse but not confined to a marker band.

**Prove before committing:** force the object fresh, gate, then move one literal and watch the sha1.
