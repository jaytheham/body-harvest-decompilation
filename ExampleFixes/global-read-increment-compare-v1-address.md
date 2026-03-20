### Global read+increment+compare: use `++global >= threshold` to get `v1` for address register

When the target assembly loads a global's ADDRESS into `v1` (rather than `a0`) and uses the incremented value in a branch:

```asm
lui     v1, hi(D_xxxxx)
addiu   v1, v1, lo(D_xxxxx)
lw      v0, 0(v1)          # v0 = old value
...
addiu   t8, v0, 1          # t8 = old + 1
slti    at, t8, threshold
bnez    at, label
sw      t8, 0(v1)          # delay slot: store back via v1
```

Using `++global >= threshold` (pre-increment in condition) — instead of extracting to a `s32 temp` variable — causes IDO to:
- allocate the global's address to `v1` (not `a0`)
- put the entry pointer computation before the branch
- schedule the store-back in the branch delay slot using `v1`

**Wrong (produces `a0` for address, score ~60):**
```c
u8 *temp_a1;
s32 temp_t8;
temp_a1 = base + global * 3;
temp_t8 = global + 1;
global = temp_t8;
if (temp_t8 >= 0xFE) { ... }
```

**Correct (score 0):**
```c
u8 *temp_a1;
temp_a1 = base + global * 3;
if (++global >= 0xFE) { ... }
```

Also: declare the pointer variable **first** (before any integer temps) to get the correct spill offset for the auto-save of the pointer around function calls (e.g. `sp+0x1c` vs `sp+0x18`).