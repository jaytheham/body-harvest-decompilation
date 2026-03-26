### Abs(dx)/abs(dz) pair: register allocation and beqz vs beqzl

When a function computes two absolute values (abs_dx, abs_dz) using separate
variables plus `negu`+`slt`+`beqz` patterns, three non-obvious ordering rules
control register allocation:

#### 1. Compute `dz` BEFORE `neg_dx` to get dz→a2, neg_dx→a3

If the target shows `negu a3,v0` (neg_dx in a3) and `subu a2,t1,t2` (dz in
a2, in the branch delay slot), compute dz first:

```c
// WRONG (neg_dx→a2, dz→a3):
dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
neg_dx = -dx;
dz = alienInstances[arg0].unk4 - D_80052B34->unk4;

// CORRECT (neg_dx→a3, dz→a2):
dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
dz = alienInstances[arg0].unk4 - D_80052B34->unk4;
neg_dx = -dx;
```

IDO's scheduler fills the beqz delay slot with the dz computation (all inputs
ready early from load scheduling), pre-allocating a2 for it. This leaves a3
for neg_dx.

#### 2. Use explicit if-else for second abs to get beqz (not beqzl)

For the second abs (abs_dz), use explicit if-else, NOT init+conditional-override:

```c
// WRONG — generates beqzl (IDO folds neg_dz and abs_dz into same register a0):
abs_dz = neg_dz;
if (neg_dz < dz) {
    abs_dz = dz;
}

// CORRECT — generates beqz with move-in-delay-slot (neg_dz→v0, abs_dz→a0):
if (neg_dz < dz) {
    abs_dz = dz;
} else {
    abs_dz = neg_dz;
}
```

With the init-then-conditional form, IDO puts neg_dz directly into abs_dz's
register (a0) and uses `beqzl` with slti in the delay slot. The explicit
if-else forces separate registers (neg_dz→v0, abs_dz→a0) with a `move a0,v0`
in the beqz delay slot — matching the target.

#### 3. Put `unk24--` BEFORE `unk20 |=` in modification block for t5/t7 order

When the target shows `lw t7, 0x20(v1)` (unk20→t7) before `lbu t5, 0x24(v1)`
(unk24→t5), put the decrement first in C:

```c
// WRONG (unk20→t5, unk24→t7):
alienInstances[arg0].unk20 |= 0x08020000;
alienInstances[arg0].unk24--;
alienInstances[arg0].unk20 &= ~0x8020;

// CORRECT (unk20→t7, unk24→t5):
alienInstances[arg0].unk24--;
alienInstances[arg0].unk20 |= 0x08020000;
alienInstances[arg0].unk20 &= ~0x8020;
```

Putting the decrement first causes IDO to pre-hoist the unk20 load into the
beqzl delay slot (for both code paths), locking unk20 into a higher t register
(t7) and assigning unk24 the next lower t register (t5).

#### Full working pattern (func_800AB730_BA6E0)

```c
void func_800AB730_BA6E0(u8 arg0) {
    s32 dx, dz, neg_dx, neg_dz, abs_dx, abs_dz;

    dx = alienInstances[arg0].unk0 - D_80052B34->unk0;  // v0
    dz = alienInstances[arg0].unk4 - D_80052B34->unk4;  // a2 (before neg_dx!)
    neg_dx = -dx;                                         // a3
    if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }  // a0
    neg_dz = -dz;                                         // v0 (reused)
    if (abs_dx < 0xC9) {
        if (neg_dz < dz) { abs_dz = dz; } else { abs_dz = neg_dz; }  // a0
        if (abs_dz < 0xC9) {
            if (alienInstances[arg0].unk24 != 0xE || D_80052B34->unk1A == 0)
                return;
        }
    }
    alienInstances[arg0].unk24--;         // decrement FIRST
    alienInstances[arg0].unk20 |= 0x08020000;
    alienInstances[arg0].unk20 &= ~0x8020;
    alienInstances[arg0].unk48 = 0xC0;
}
```

#### Leaf function max(abs_dx, abs_dz) with goto (func_80085448_943F8)

For LEAF functions (no jal) that also compute **max(abs_dx, abs_dz)** with a goto-based
merge and check the distance against a constant:

**Pattern:**
1. Use C89 inline init declarations in order `var_v0 = dx`, `temp_a2 = dz`, `temp_a3 = -var_v0`:
   this gives `dz→a2` and `neg_dx→a3` correctly.
2. Use **explicit if-else** (not init+conditional) for BOTH abs computations:
   ```c
   temp_t0 = -temp_a2;
   if (temp_t0 < temp_a2) { var_t1 = temp_a2; } else { var_t1 = temp_t0; }
   ```
   and inside the outer-else's abs_dz_2:
   ```c
   if (temp_t0 < temp_a2) { var_a0_2 = temp_a2; } else { var_a0_2 = temp_t0; }
   ```
3. Use a `goto block_11` (inside else block) for the dx≤0 path to maintain a3 register
   allocation via CFG interference with the else block's `temp_t0=t0`.
4. Result: best achievable score ~405 (2 missing `b+delay` instructions due to
   IDO jump-threading the goto into the beqz when the else body has only the goto;
   all registers, instruction types, and logic are correct).

