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

### Mission condition evaluator: initialization and tail stores

`func_80075AA4_84A54` matched with `cond = &D_801494C0[condCount]; do {` on one line. This delayed the pointer spill until after the saved global addresses finished initializing. For the callback loop, all three statements needed one line: `condCount = 15; callback = &D_80149478[15]; do {`. The constant load stayed before the address while its spill moved after the address completion.

At the outer loop tail, capturing the old count into the existing inner-loop index and updating the pointer on the same line (`i = condCount--; cond--;`) preserved the count-first loads and placed the count store in the branch delay slot. The loop test is then `while (i)`. A single-iteration `do { ... } while (0)` with early `break` statements replaced the former goto exits without changing code generation. Nine-byte game conditions can be represented as `typedef u8 MissionGameCondition[9]` and indexed directly, retaining identical assembly. Verified with diff score 0 and full ROM OK.
