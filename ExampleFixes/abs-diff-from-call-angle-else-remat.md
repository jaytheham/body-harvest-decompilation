### UNRESOLVED: abs(diff) where diff is derived from a call result (func_80081390_90340)

Case study, not a solved pattern — recorded so the next attempt does not repeat the
same dead ends. Status: logic is identical to the target in every variant tried, but
IDO emits one extra rematerialisation of `(s16)callResult` in the **else** branch.

#### Target shape (ROM 0x90340, `func_80081390_90340`)

```
90404  sll  a0,v0,0x10        ; angle = (s16)func(...)
90408  sra  t5,a0,0x10        ;   t5 is the temp copy of (s16)v0
9040c  lh   a2,0xe(a1)        ; unkE
90410  move a0,t5             ; angle's register a0
90414  subu v1,a2,v0          ; E = unkE - rawAngle   <-- folded to v0!
90418  sll  t9,v1,0x10
9041c  sra  t0,t9,0x10        ; diff = (s16)E
90420  negu t1,t0
90424  slt  at,t1,t0          ; -diff < diff
90428  beqz at,9044c
9042c  subu v1,a2,t5          ; (delay) ELSE reuses t5 (angle's V)
90430  sll  a0,v0,0x10        ; THEN rematerialises (s16)v0 (fresh temp t2)
90434  sra  t2,a0,0x10
90438  subu v1,a2,t2
9043c  sll  t3,v1,0x10
90440  sra  v1,t3,0x10
90444  b    90458
90448  move a0,t2             ; angle = fresh V
9044c  sll  t6,v1,0x10        ; ELSE: (s16)E  (uses v1 from delay slot)
90450  sra  t7,t6,0x10
90454  negu v1,t7
90458  slti at,v1,0x4000
```

C logic (all variants below are logically identical to this):

```c
angle = func_80003824_4424((f32)-dz, (f32)dx);
diff = (s16)(alienInstances[arg0].unkE - angle);
if (-diff < diff) {
    diff = (s16)(alienInstances[arg0].unkE - angle);
} else {
    diff = -(s16)(alienInstances[arg0].unkE - angle);
}
if (diff < 0x4000) { ... }
```

#### What IDO actually emits (closest variant)

Everything up to and including the `slt/beqz` matches byte-for-byte
(`andi/sll/addu/lui/addiu/...`, the `angle` cast, the folded `subu v1,a2,v0`, the
`negu/slt/beqz`). The **then** branch also matches exactly. The difference is the
**else**, which rematerialises `(s16)v0` into a fresh temp (hoisted to just after the
`lh`) instead of reusing `t5`:

```
90410  sll  a0,v0,0x10    <-- EXTRA (else's remat, hoisted before the branch)
90430  sra  t6,a0,0x10    <-- delay slot completes the else's remat
90450  subu v1,a2,t6      <-- else subtracts using the fresh temp
...    move a0,t6         <-- EXTRA (else reassigns angle)
```

Result: 3 V-computations instead of the target's 2, the `subu` is one slot late, and
two `move a0,...` appear instead of one.

#### Variants tried (all produce the same extra else remat)

- `s16 diff` / `s32 diff`, with and without `(s16)` casts, `if (-diff < diff)` vs
  `if (diff < -diff)`.
- Ternary `diff = (-(s16)E < (s16)E) ? (s16)E : -(s16)E;` (matches first 52 lines,
  else still remats; the ternary does generate the else first — which is what puts the
  target's else `subu` in the delay slot).
- Explicit truncated temp `s16 e = ...; if (-e < e) ...`.
- Explicit raw temp `s32 e = unkE - angle; diff = (s16)e;`.
- A second s16 variable (`a = angle;`) used only by the else.
- `s32 rawAngle` holding the call result + `s16 angle = rawAngle`.
- Adding `(s16)angle` casts to only the then, only the else, or both.
- Swapping declaration order (`angle`/`diff` before or after `dx`/`dz`).
- `else { diff = -diff; }` (collapses to a single `negu`/`move`, too short).
- Two-statement else `diff = E; diff = -diff;` (gives neg-then-trunc order, wrong).

Notes on the failures:
- The **init** `diff` folds `angle` to the raw `v0` (copy propagation in that block):
  `subu v1,a2,v0`.
- Both branch blocks rematerialise `(s16)v0` no matter whether the source repeats
  `angle`, a bare `(s16)angle`, or a copy variable — IDO treats the call result as a
  rematerializable value there.
- The target's else reuses the *temp copy* `t5` (not even the variable's register
  `a0`), i.e. the target keeps the temp live to the delay slot and the branch then
  re-uses it. Nothing in the tested C shapes reproduces that live range.
- The `move a0,t2` in the target then-branch is a *restore*: the remat used `a0`
  (angle's own register) as the shift scratch, so angle had to be rewritten; the else
  does not remat, so no restore there. Reproducing this requires the else to not remat.

#### Next ideas (untried)

- Force the else to use the variable's register by having the angle value live in
  memory/a non-rematerializable place (e.g. a stack slot or a value the compiler cannot
  see through) while keeping the exact same instruction shape.
- Look for another BH function with the pattern "s16 var = call(); if (-d < d) ..." and
  read its already-matched C.
- Consider that the original might not use `(s16)` at all but `u16`/a struct field copy
  that changes how IDO value-numbers the variable.
