### Global store before jal: placement AFTER last sp-array store, not between them

When a function saves a global (e.g. `temp_a3 = D_8005BB38`), increments it (`D_8005BB38 = temp_a3 + 0x40`), then calls a function with the old value, the **placement** of the `D_8005BB38 = temp_a3 + 0x40` line dramatically affects the assembly score.

**Wrong (between array stores — `sw t7, 0(s1)` appears too early):**
```c
sp48[0] = arg0[i].unk2 * 8;
sp48[1] = arg0[i].unk4 * 8;
D_8005BB38 = temp_a3 + 0x40;  // ← WRONG position: between sp48[1] and sp48[2]
sp48[2] = arg0[i].unk0 * 8;
func_call(sp3C, sp48, 0, temp_a3);
```
Generates: `sw <temp> before lh t7,0(v0)` — store arrives 2 instructions too early. **Score ~303**.

**Correct (after ALL sp-array stores):**
```c
sp48[0] = arg0[i].unk2 * 8;
sp48[1] = arg0[i].unk4 * 8;
sp48[2] = arg0[i].unk0 * 8;
D_8005BB38 = temp_a3 + 0x40;  // ← CORRECT: after last sp48 store
func_call(sp3C, sp48, 0, temp_a3);
```
IDO schedules: `lh t7, 0(v0)` (load unk0) **before** the `sw t9, 0(s1)` (global store), then `sll t8, t7, 3` (unk0×8), then `jal` with `sh t8, sp48[2]` in the delay slot. **Score ~78**.

### Remaining frame issue (documented for future reference)

Even at score 78, the frame is 0x58 (target: 0x50). Root cause: any 4th named non-last `s32` variable creates a phantom stack home that IDO places **above** the existing arrays (not in the 4-byte gap at sp+0x38–0x3B between `ra` and `sp3C[0]`), inflating the frame by 8 bytes.

With arrays `s16 sp48[3]` (1st, highest offset) and `s32 sp3C[3]` (2nd), the 3-variable layout (with `var_s0` as LAST, register-only) gives frame 0x50. Adding either `temp_a3` or a dummy as a 3rd non-last variable always causes the frame to grow from 0x50 to 0x58 regardless of declaration order. The arrays are packed sp+0x3C–0x4D leaving only 6 bytes unused; IDO extends the top rather than filling the existing gap.

Approaches tried and rejected:
- `{3-var} + D_8005BB38 += 0x40; func(..., D_8005BB38 - 0x40)` → score 435 (double addiu generated)
- `{3-var} + func(..., D_8005BB38); D_8005BB38 += 0x40;` → score 905 (store after jal + extra lw)
- `{3-var} + ((void)0, D_8005BB38)` cfe temp trick → score 688 (cfe temp inflates frame too)
- All 4-variable orderings (sp48, sp3C, temp_a3, var_s0 or vice versa) → frame 0x58
