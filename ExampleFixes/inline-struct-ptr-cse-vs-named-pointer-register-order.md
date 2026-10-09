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

### Same lever at high register pressure: the named pointer costs instructions, not just register order

`func_802DCA14_2BEE44` (siberia, `overlay_level/siberia/2B7100.c`) walks the same `D_8014DD50` chain: it reads eleven `s8` fields, all live at once, and the entry pointer `&D_8014DD50[v1]` has to survive the `func_80081F18_90EC8` call for a `->unkE == 8` test afterwards. Declared as `Unk8014DD50 *nodeA`, the build spilled **two of the live bytes to stack slots** (`sb`/`lb` pairs) and an extra pointer slot, giving a frame `0x90` against the target's `0x88` and **147 instructions against 143 (ins_diff delta +4)**. Removing the pointer and spelling the two reads through the index —

```c
v1 = D_8014DD50[alien->unkC].unkC;
a1 = D_8014DD50[v1].unkD;
a0 = D_8014DD50[v1].unkC;
/* ... */
if (D_8014DD50[v1].unkE == 8) {
```

— dropped both byte spills and the extra slot: **delta +4 -> ~0 (143 vs 142)** and asm-differ **4753 recorded / 4768 re-measured -> 2756**. The order of the `arr[]` element stores was the second lever (2795 without it, 2756 with the target's store order: `arr[3], arr[1], arr[5], arr[7], arr[0], arr[6], arr[2], arr[8], arr[4], ...`); permuting the **declaration order of the eight `s8` locals was neutral** (six permutations, all 2756), so the residual band is allocation, not declaration order. Note both directions of this lever exist: `register-band-and-temp-bank-rotation.md` records a case where *naming* the once-computed pointer was the fix — the deciding factor is whether the named pointer's own lifetime adds pressure that forces byte spills.
