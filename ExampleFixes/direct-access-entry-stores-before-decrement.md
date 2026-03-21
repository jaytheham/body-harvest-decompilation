### Direct array access + entry stores before global decrement for correct scheduling

When a function:
1. Checks if a struct-array entry is already "free" (e.g. `unk0 == 0xFA`), calls osSyncPrintf and returns early
2. Otherwise marks it free (`unk0 = 0xFA`, `unk1 = 0`), decrements a global count, and updates a global min-index

**Problem A:** Using a local pointer variable (`Unk801541F8Entry *entry = &D_80154xxx[arg0]`) causes IDO to schedule the entry stores BEFORE the global loads (wrong instruction order, ~185 point diff).

**Problem B:** If `D_80154304--` comes before entry stores in C, it causes D_80154304's value to get `t0` assignment while `0xFA` gets `t2`, shifting the register numbering vs target.

**Solution:** Use **direct array access** (no local pointer) AND place entry stores **before** the global decrement in C:

```c
// WRONG (local pointer - entry stores scheduled before global loads):
Unk801541F8Entry *entry = &D_80154088[arg0];
...
entry->unk0 = 0xFA;
entry->unk1 = 0;
D_80154304--;

// WRONG (D_80154304-- first - wrong register for 0xFA constant):
D_80154304--;
D_80154088[arg0].unk0 = 0xFA;
D_80154088[arg0].unk1 = 0;

// CORRECT (direct access + entry stores first → 0xFA=t0, D_80154304=t1):
D_80154088[arg0].unk0 = 0xFA;
D_80154088[arg0].unk1 = 0;
D_80154304--;
if (arg0 < D_8015430C) {
    D_8015430C = arg0;
}
```

**Why it works:**
- Direct array access lets IDO hoist global loads (D_80154304/D_8015430C) before the entry stores for pipeline scheduling
- Entry stores appearing FIRST in C means `0xFA` constant gets allocated to `t0` (before `D_80154304` value gets `t1`), matching target register allocation
- IDO then schedules `D_80154304--` store into the delay slot of the branch instruction
