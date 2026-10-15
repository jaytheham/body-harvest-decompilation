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

### Area damage: hoisted wide constant and indexed entity pass

`func_80124170_133120` matches with the building pointer setup, counter initialization, distance test, and `arg3 >= limit` comparison on one physical line. The literal limit is `0x10001`. Equalizing that use with the pointer setup moves `ori s5,s5,1` ahead of the pointer's `addiu` and the counter's `li`, closing the final score from 60 to 0. The remainder of the loop can retain normal formatting.

Index the active vehicle list with the post-decrement counter instead of declaring and manually decrementing a list pointer. IDO strength-reduces `D_80158E80[count]` into the target pointer walk, including its stack spill at 0x6C and count-first tail updates. The squared-radius spill then occupies 0x70. A shared pointer union for vehicles, aliens, and buildings and shared arithmetic scratch avoid reserving duplicate private slots across sibling scopes. Declaration order places the shared distance, vehicle type pointer, and hit-result address at 0xB4, 0x9C, and 0x7C. The remaining unused word preserves the target's 0xB8 frame.

Both fixed-size entity passes use `count = 0xFE; do { ... } while (count--);` and include slot zero. Keep the knockback multiplier as integer `2`: `2.0f` produces `add.s`, whereas the target requires `mul.s`. The owner is an opaque `void *` because both vehicles and aliens call this function. Casting both operands of the alien-owner comparison to `u32` preserves the target operand order. Verified with diff score 0 and full ROM `OK`.
