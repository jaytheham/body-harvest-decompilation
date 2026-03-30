### `sll t??,val,30; bltz` bit-1 test in backwards scan: named pointer vs register cycle conflict

When a backwards array scan uses `lw t2, 0x1C(a1); sll t4, t2, 0x1e; bltz t4` (testing bit 1 of a 4-byte word), there is a recurring conflict between:

1. **Delay slot ordering**: For `addiu a1, a1, -0x654` (completing the search pointer address) to appear as a standalone instruction at 1315b4 (and `li v1, 0xf` in the delay slot of the second branch), you need a **named pointer variable** `Unk8015F790 *var_a1_2 = &D_8015F790[15]` in the `||` condition's comma expression.

2. **Register cycle shift**: Having that named pointer (`var_a1_2`) causes IDO to shift the temp register cycle by +1 (ExampleFix: `local-structptr-register-cycle-shift.md`), producing `sll t3` instead of `sll t4` and cascading all subsequent temps.

**Root cause**: The named pointer forces the strength-reduction pointer (a1) to be treated as a compiler-visible named variable, changing IDO's register allocation state before the sll temp at 1315e0.

**Best approximation (score ~285)**:
- NO named pointer variable
- Direct indexed access: `D_8015F790[var_v1].unk1C << 30 < 0`
- Struct field: `s32 unk1C` at offset 0x1C
- Loop: `do { if (...) continue; var_a1 = var_v1; break; } while (var_v1--);`
- Result: Delay slots are **swapped** (2 mismatches) BUT registers are correct (25 fewer mismatches) = score 285

**Why not score 0**: Cannot simultaneously have correct delay slot ordering AND correct register allocation - they require conflicting code patterns. Score 285 is the best achievable with this known technique set.

**Condition expression** for `sll + bltz` bit-1 test on a `u32/s32` 4-byte field at struct offset 0x1C:
- Field type `s32 unk1C` with `D_8015F790[var_v1].unk1C << 30 < 0` generates `lw + sll 30 + bltz`
- Field type `u32 unk1C` with `(s32)(D_8015F790[var_v1].unk1C << 30) < 0` also works
- `unk1C & 2` alone generates `lw + andi + bnez` (wrong instruction pattern)

**Write loop pattern** for filling N packed positions with a 3-float struct:
```c
s16 *var_a3 = (s16 *)slot + 4;  // start = slot + 8 bytes (before first element)
do {
    var_a3--;  // decrement before write (targets position j from 4 down to 0)
    var_a3[1] = (s16)arg0->unk0;   // x coord (offset +2 from pointer)
    var_a3[6] = (s16)arg0->unk4;   // y coord (offset +12 from pointer)
    var_a3[11] = (s16)arg0->unk8;  // z coord (offset +22 from pointer)
} while (var_v1--);  // var_v1 starts at 4, runs 5 iterations (4,3,2,1,0)
```
This fills all 5 slots (indexed 4 down to 0) of x[], y[], z[] arrays packed as [x0-x4][y0-y4][z0-z4].
