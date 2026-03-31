### Same-line `i = INIT; do {` delays loop-counter `li` past address computations

When a do-while loop uses both an explicit counter (`i`) and array indexing (which IDO strength-reduces into pointer walks with `addiu` completions from earlier `lui` instructions), the scheduling of `li reg, INIT` relative to those `addiu` instructions can differ.

**Symptom:** `li a0, 0xcf` (loop counter init) appears BEFORE `addiu a2, a2, lo` and `addiu v0, v0, lo` (array base address completions), but target has it AFTER them. Score ~60 with only this one instruction out of place.

**Wrong (separate lines — `li` scheduled immediately after preceding store):**
```c
D_8014F824 = 0;

i = 0xCF;
do {
```

**Correct (same line as `do {` — `li` scheduled after `addiu` completions):**
```c
D_8014F824 = 0;

i = 0xCF; do {
```

Putting `i = 0xCF;` on the same line as `do {` causes IDO's scheduler to place the `li` instruction after the `addiu` address completions, matching the target. The blank line between the global store and the `i = INIT; do {` line is also important — it separates the basic block boundary.
