#### Ternary inline expression fixes register swap and blezl

When a function computes a signed value (e.g., +13 or -13) based on a condition
and then uses it in a multiply, writing it as an explicit `s32 local` variable
causes IDO to:
1. Assign the local to `v0` (lower-numbered register) and the pointer to `v1` —
   **swapping registers vs target**.
2. Use `blezl` (branch-likely) instead of `blez`, hoisting the multiply operand
   load into the delay slot.

**Target assembly pattern:**
```
lw      v0, ptr        ← pointer in v0
li      v1, 0xd        ← value in v1
blez    t6, target
nop                    ← plain nop delay slot
b       target
li      v1, -0xd       ← delay slot: override value
lh      t7, 0x22(v0)   ← load multiply operand AFTER branch sequence
multu   v1, t7
```

**Wrong (explicit local):**
```c
s32 var_v1;
var_v1 = 0xD;
if (ptr->speed > 0) { var_v1 = -0xD; }
result = (s16)(var_v1 * ptr->unk22);
```
Generates `blezl` with `lh` in delay slot; ptr in `v1`, local in `v0`.

**Correct (inline ternary):**
```c
result = (s16)((ptr->speed > 0 ? -0xD : 0xD) * ptr->unk22);
```
No explicit local variable → ptr stays in `v0`, the conditional temp goes to
`v1`. IDO generates plain `blez + nop + b + li` with the load after the branch.
Note: the above uses `(condition ? negative : positive)` to match `blez` (check
≤ 0 → keep positive default).
