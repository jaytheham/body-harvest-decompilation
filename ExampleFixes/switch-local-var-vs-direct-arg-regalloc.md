### Switch case: named local variable forces v0, direct arg use forces a1 directly

When a switch case passes `arg0[N]` as both an argument to a function AND as an array index
for additional arguments, the presence/absence of a named local variable dramatically changes
the generated assembly.

**Symptom:** Target has `lbu v0, N(s0)` then `or a1, v0, zero` in the jal delay slot.
Current has `lbu a1, N(s0)` then `lh a3, X(v1)` in the jal delay slot (1 instruction fewer).

**Root cause:** With no named variable, IDO loads `arg0[N]` directly into a1 (the argument
register) and uses a1 for the array index computation. It then fills the jal delay slot with
the last uncomputed argument (lh a3). With a named variable, IDO loads into v0 (temp), uses
v0 for computation, and fills the jal delay slot with `or a1, v0, 0` instead.

**Fix:** Remove the named local variable — use `arg0[N]` directly in all places:

```c
/* WRONG — introduces v0 for named variable but causes delay-slot mismatch */
u8 idx = arg0[1];
BuildingInstance *bi = &buildingInstances[idx];
osSyncPrintf(fmt, idx, bi->xCoord, bi->zCoord);

/* CORRECT — direct arg use, IDO loads into a1, puts lh in delay slot */
osSyncPrintf(fmt, arg0[1], buildingInstances[arg0[1]].xCoord, buildingInstances[arg0[1]].zCoord);
```

The "correct" version has one FEWER instruction (13 vs 14) and IS the matching assembly.
The target's `lbu v0` + `or a1, v0` (14 instructions) is NOT produced by IDO for this pattern.
Look more carefully — if target has `or` in jal delay slot, it means v0 is used, which means
the original source DID have the named variable AND the compiler happened to choose v0 for it.

**Important:** If the target's delay slot is `lh reg, X(ptr)` (a memory load), use the
no-variable form. If the delay slot is `or/move`, the named-variable form produces v0 usage.

Applied in `func_80007900_8500` (53F0.c, case 0x99).
