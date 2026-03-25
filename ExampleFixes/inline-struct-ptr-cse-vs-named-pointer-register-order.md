### Inline struct array access (no named pointer) gives correct register order when entry is live across jal

When a loop walks a linked-list-style struct array and uses a computed entry pointer (`&D_arr[idx]`) across a `jal`, the register allocator may produce the wrong s0/s1 assignment if you declare a named `Unk*Entry *entry` local variable.

**Cause:** With a named pointer, IDO treats `entry` as a user variable and assigns callee-save registers based on declaration order vs first-use order, which can diverge from the target.  With **no named pointer**, IDO creates an internal uopt CSE temp for `&D_arr[idx]` and puts it in s0 (lowest callee-save), while the index variable (which is first referenced in the prologue) lands in s1.

**Symptom:** s0 and s1 contents are swapped vs target; swapping declaration order doesn't help because usage-weight, not declaration order, controls callee-save assignment for uopt temps.

**Wrong (named pointer, s0/s1 swapped):**
```c
Unk80154318Entry *entry;
s16 var_s1;
// ...
entry = &D_80154318[var_s1];
entry->unk8 = (u16)entry->unk8 + 1;
func_foo(entry->unk8, entry->unkA, entry->unkC, 0xB, var_s1);
var_s1 = entry->unk4;
```

**Correct (inline access, no named pointer):**
```c
s16 var_s1;
// ...
D_80154318[var_s1].unk8 = (u16)D_80154318[var_s1].unk8 + 1;
func_foo(D_80154318[var_s1].unk8, D_80154318[var_s1].unkA, D_80154318[var_s1].unkC, 0xB, var_s1);
var_s1 = D_80154318[var_s1].unk4;
```

IDO generates the same CSE pointer internally (s0), keeping var_s1 in s1 and naturally scheduling `sw s1, 0x10(sp)` (the 5th stack argument) during the multu latency slot — matching target assembly precisely.

**Also note:** `s16 unk8` increment uses `lhu` (not `lh`) in IDO when written as `field = (u16)field + 1`. The `(u16)` cast forces an unsigned load for the read-modify-write, while the subsequent pass-to-function reload still uses `lh` (signed) matching function's `s16` parameter.
