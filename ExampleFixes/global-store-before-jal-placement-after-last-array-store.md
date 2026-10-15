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
