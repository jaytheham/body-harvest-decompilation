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

#### 4. The ternary spelling is a third valid form — and it is worth whole instructions

Measured on `func_800E95BC_F856C` (`overlay_gameplay/outside/F7870.c`, 171 instr, port *Draw
distance*), 2026-10-07. The committed best body spelled both abs values as init+conditional:

```c
absDeltaX = -deltaX;
if (absDeltaX < deltaX) { absDeltaX = deltaX; }
absDeltaZ = -deltaZ;
if (absDeltaZ < deltaZ) { absDeltaZ = deltaZ; }
```

Against this target that form is **one instruction short per abs**: IDO folds the second arm into
the `beqz` delay slot (`beqz at,L` + `move dst,-d`), so the function compiled to **163 instructions
to the target's 171** — and because a TU packs sequentially, every later symbol in the file landed
0x20 low and `check` reported **4252** for a ~33-row real divergence (see
`check-score-charges-shipped-tail-on-instr-count-deficit.md`).

Rewriting the same two computations as ternaries

```c
absDeltaX = (-deltaX < deltaX) ? deltaX : -deltaX;
absDeltaZ = (-deltaZ < deltaZ) ? deltaZ : -deltaZ;
```

made IDO materialise **both arms plus the `b`**, exactly as the target does:

```
negu v1,a3 / slt at,v1,a3 / ... / beqz at,L / or <d>,t1  (delay)
b L2 / or a2,a3,zero (delay) / L: or a2,v1,zero
```

and the same for the second abs. **Measured: 163 -> 169 instructions, `check` 4252 -> 1965**, with
the whole prologue/branch/loop register map falling into place at once — the argument home
`sw $a1,0x4C($sp)`, `or $s0,$a2,$zero` + `sll $t3,$s0,8` (arg2 preserved across the `absDeltaX`
that clobbers `a2`), and DeltaX->a3 / absDeltaX->a2 / deltaZ->a1 / -deltaZ->a0 / absDeltaZ->v0 all
matching the target. The clue that this was the answer: the abs **inside**
`nSteps = ((-dX < dX) ? dX : -dX) >> 8` already matched as a ternary, while the two standalone abs
blocks did not.

**Rule.** When the target's abs block shows *two* branches (`beqz` + `b`) with an explicit second
arm, the source spelling is a ternary (or an if/else with both arms materialised), not
`x = -d; if (x < d) x = d;`. The extra arm is not cosmetic: it is worth 6 instructions here
because it unblocks the register allocator for the rest of the function.

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

#### Perfectly matched leaf function max(abs_dx, abs_dy) then flag set (func_800918E0_A0890)

When a LEAF function uses `beqzl` for the early exit (flags&0x100==0 → clear flag), computes
`max(|dx|, |dy|)`, and then sets/clears a flag bit, the perfectly matching C pattern is:

1. **Positive outer check** — use `if (flags & 0x100)` (not negated) so the clear path is
   the fall-through at the bottom, matched by `beqzl t9, clear_label`.
2. **Standard abs declarations** `dx`, `neg_dx`, `abs_dx` / `dy`, `neg_dy`, `abs_dy` in that
   order (→ a0/a1/a2 and a3/t0/t1 respectively).
3. **Repeat the abs_dx computation** inside the `if (abs_dy < abs_dx)` true-branch:
   ```c
   if (abs_dy < abs_dx) {
       if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }
       dx = abs_dx;
   }
   ```
   IDO CSEs `abs_dx = neg_dx` into the inner `beqz` delay slot (`move a2, a1`), then
   jump-threads the dx>0 path past the `slti` label to the `beqzl`, placing `slti at,a0,0x400`
   in the `b` delay slot — matching the target exactly.
4. **Reuse `neg_dx` as the abs_dy intermediate** in the else-branch:
   ```c
   } else {
       if (neg_dy < dy) { neg_dx = dy; } else { neg_dx = neg_dy; }
       dx = neg_dx;   /* move a0, a1 */
   }
   ```
5. **Final check uses `dx`** (not a separate `dist`): `if (dx < 0x400) { set; return; }`.
   DO NOT use a separate `dist` variable — that shifts dist to a2 and generates
   `slti at, a2, 0x400` instead of `slti at, a0, 0x400`.

Full working pattern:
```c
void func_800918E0_A0890(u8 arg0) {
    AlienInstance *alien;
    s32 flags;
    s32 dx, neg_dx, abs_dx;
    s32 dy, neg_dy, abs_dy;

    alien = &alienInstances[arg0];
    flags = alien->unk20;
    if (flags & 0x100) {
        dx = alien->unk0 - alien->unk14;
        neg_dx = -dx;
        if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }
        dy = alien->unk4 - alien->unk18;
        neg_dy = -dy;
        if (neg_dy < dy) { abs_dy = dy; } else { abs_dy = neg_dy; }
        if (abs_dy < abs_dx) {
            if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }
            dx = abs_dx;
        } else {
            if (neg_dy < dy) { neg_dx = dy; } else { neg_dx = neg_dy; }
            dx = neg_dx;
        }
        if (dx < 0x400) {
            alien->unk20 = flags | 0x1000;
            return;
        }
    }
    alien->unk20 = flags & ~0x1000;
}
```

