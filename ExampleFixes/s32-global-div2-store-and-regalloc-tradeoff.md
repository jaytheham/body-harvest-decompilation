### s32 global `/= 2` vs explicit read-back: double-store vs register precommitment tradeoff

When matching a function that writes a global twice in quick succession using an intermediate value
`D_global = temp; D_global = temp / 2`, IDO at -O2 may eliminate the first (dead) store.

## Symptoms

Target has two consecutive `sw` instructions to the same global address:
```asm
sw    t1, 0(v0)      ; D_global = temp
bgez  t2, label
sra   t3, t2, 1      ; delay slot (signed div by 2)
addiu at, t2, 1
sra   t3, at, 1
label:
sw    t3, 0(v0)      ; D_global = temp / 2
```
But decomped C `D_global = temp; D_global = temp / 2;` only generates ONE `sw` (dead store eliminated).

## Root cause

IDO -O2 dead-store elimination removes `D_global = temp` when the very next statement overwrites
D_global with `temp / 2`. No read-back → no observable intermediate state → store eliminated.

## Solution variants (tradeoffs)

### 1. Compound assignment (declare global as `s32`):
```c
// header: extern s32 D_global;
D_global = temp;
D_global /= 2;    // compound assignment: read-back of s32 → double store preserved
```
**Effect**: Double store preserved ✓, but IDO precommits a register for D_global's address *before*
loading other values in the same block. This causes a register-allocation shift of ~2 positions
(e.g. D_global addr uses v1 instead of v0, D_neighboring uses a1 instead of v1), resulting in
score ~590 for a 70-instruction function.

### 2. Explicit read-back (global as `u32` or `s32`):
```c
D_global = temp;
D_global = (s32)D_global / 2;    // explicit cast + read-back
```
**Effect**: Double store preserved ✓, but IDO precommits *even earlier* (during the bnez delay slot
region), causing register allocation shift ~4 positions and score ~795.

### 3. No read-back (IDO eliminates first store):
```c
D_global = temp;
D_global = temp / 2;              // no read-back → dead store eliminated
```
**Effect**: Only ONE store (wrong), but register allocation matches target exactly. Score ~1180 for
the same function (worse overall because missing instruction matters for all subsequent branch
targets).

## When the target has both stores WITHOUT apparent read-back

This means the original C code used compound assignment (`/= 2`) and declared the global as
`s32`, OR there is some other mechanism preventing dead-store elimination. The compound-assignment
form (`/= 2`) is the best approximation for reproducing both stores.

## Register allocation pattern with compound assignment

IDO precommits the global's address register (v1) during scheduling of the block that contains
the compound assignment, preventing v1 from being used for a neighboring `lw` (D_4768C load).
This shifts all subsequent register assignments: v1→a1, t8→a0, v0→v1, a1→a0, a0→a1 throughout
the function. Unresolvable without fundamentally different code structure.

## Related: `move regN, regM` before `mtc1 regN, $fX`

When the target has a spurious `move t9, t8` before `mtc1 t9, $fX`, this is a side effect of the
register allocation chain: the value (here D_4767C) was loaded into t8, and IDO's register cycler
decided to use t9 for the float pipe. With different upstream register allocation (v1 vs a1 for the
neighboring global), t8 becomes a0 and the copy is omitted, leaving the mtc1 to use a0 directly.
