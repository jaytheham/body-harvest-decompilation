### Sub-pointer `addiu v0, s0, 8` hoisted into `lbu` delay slot

When the target asm has a `lbu` immediately followed by `addiu v0, s0, OFFSET` (filling the load-use delay slot), and then loads via `lh a0, 0(v0)` / `lh a1, 2(v0)` etc. instead of direct `lh a0, OFFSET(s0)`:

- The original code had an **explicit sub-pointer assignment** using a `(u8 *)` cast: `temp_v0 = (s16 *)((u8 *)&D_80154318[var_s1] + 8);`
- The cast through `u8 *` prevents the compiler from folding `s0 + 8 + 0/2/4` back into direct base+offset loads. Using `&entry->unk8` (struct member address) does NOT prevent folding — the compiler sees `8(s0)`, `0xa(s0)`, `0xc(s0)` and skips the sub-pointer register entirely.
- Place this assignment **between** `unkE++` (or the lbu-generating statement) and the `if` comparison — the instruction scheduler then hoists `addiu v0, s0, 8` backward to fill the lbu load-use delay slot.

**Register allocation trick**: to get the correct register allocation (index → s1, internal entry ptr → s0) when using an explicit sub-pointer variable, use **direct array access** (`D_80154318[var_s1].field`) for all struct accesses rather than declaring a named `Unk80154318Entry *entry` — the compiler assigns s0 internally for the implicit struct pointer, and s1 for the loop index. Adding a second named `s16 *temp_v0` for the sub-pointer keeps it in v0 (temp, doesn't cross a JAL).

**Pattern (score 0 — fully matched):**
```c
void func_800D7790_E6740(void) {
    s16 var_s1;
    s16 *temp_v0;

    var_s1 = D_801542CA;
    if (var_s1 == -5 || var_s1 == -6) {
        func_800C1418_D03C8(0x11, 1);
        return;
    }
    while (var_s1 != -5 && var_s1 != -6) {
        D_80154318[var_s1].unkE++;
        temp_v0 = (s16 *)((u8 *)&D_80154318[var_s1] + 8);
        if (D_80154318[var_s1].unkE >= 4) {
            D_80154318[var_s1].unkE = 0;
        }
        func_80137368_146318(temp_v0[0], temp_v0[1], temp_v0[2], 9, var_s1);
        var_s1 = D_80154318[var_s1].unk4;
    }
}
```

**Key asm generated:**
```asm
lbu  t7, 0xe(s0)        ← read unkE
addiu v0, s0, 8          ← sub-pointer (hoisted into load-use delay slot)
addiu t8, t7, 1
andi  t9, t8, 0xff
slti  at, t9, 4
bnez  at, ...
sb    t8, 0xe(s0)        ← delay slot: write unkE+1
sb    zero, 0xe(s0)      ← write 0 only if unkE+1 >= 4
lh    a0, 0(v0)
lh    a1, 2(v0)
lh    a2, 4(v0)
```

### Variant: typed `&entry->unk8` sub-pointer can still preserve `entry + 8` base

If the target only needs the compiler to keep a base pointer at `entry + 8` for later byte accesses like `lbu 6(v0)` / `sb 6(v0)`, a typed local such as `s16 *entryData = &entry->unk8;` may be sufficient.

Observed matched pattern:
```c
entry = &D_80154318[next];
entryData = &entry->unk8;
if (((u8 *)entryData)[6] == 0x37) {
    ...
}
((u8 *)entryData)[6]++;
```

This matched `func_800D6EAC_E5E5C`: IDO emitted `addiu v0, v1, 8` once, then used `lbu 6(v0)` / `sb 6(v0)` instead of direct `0xe(v1)` accesses. This is a useful middle ground when a named `entry` pointer is already present and the stricter `(u8 *)((u8 *)&array[i] + 8)` form is not required.

### Variant: named struct pointer + named sub-pointer → spurious `move` copy; use DIRECT array access to remove it

When a loop keeps a named struct pointer (`Unk80154318Entry *unit = &D_80154318[unitId]`) AND a named sub-pointer (`Unk80154318Sub *motion = (Unk80154318Sub *)&unit->unk8`), IDO may insert a spurious `move s2,s1` (copy of the unit pointer) right after computing `unit`, and then route the final `unit->unk4` load through the copy register (`lh s0,4(s2)`) instead of the base register (`lh s0,4(s1)`). That one extra instruction shifts the whole function by 4 bytes (branch targets + jal targets all mismatch) and bloats the diff score massively.

**Fix: drop the named `unit` pointer entirely and use direct array access `D_80154318[unitId].field` for every struct access**, keeping only the named sub-pointer `motion` (its offsets still fold into the `unit + 8` base register, `s0`):

```c
// WRONG: extra `move s2,s1` + final load via s2
unit = &D_80154318[unitId];
motion = (Unk80154318Sub *)&unit->unk8;
if (unit->unk11 < 0x14) {
    nextUnit = unit->unk4;
    func_800C2554_D1504(unitId, arg0);
    unitId = nextUnit;
} else {
    ...
    unitId = unit->unk4;   // lh s0,4(s2) in asm
}
```

```c
// RIGHT: score 0, base register s1 used for the final load
motion = (Unk80154318Sub *)&D_80154318[unitId].unk8;
if (D_80154318[unitId].unk11 < 0x14) {
    nextUnit = D_80154318[unitId].unk4;
    func_800C2554_D1504(unitId, arg0);
    unitId = nextUnit;
} else {
    ...
    unitId = D_80154318[unitId].unk4;   // lh s0,4(s1) in asm
}
```

Matched `func_800C22EC_D129C` in `src.us/overlay_gameplay/outside/CFE30.c` (score 0, `build/bh.us.z64: OK`). The compiler CSEs `&D_80154318[unitId]` into the base register itself, so no named `unit` pointer is needed; the sub-pointer `motion` still becomes `addiu s0,s1,8` (hoisted into the `beql` delay slot, with a dead duplicate before the else label), and all byte accesses (`motion->unk6/7/8` via `(u8)` casts) emit `lbu`/`sb` as required. Removing the extra 4 bytes also realigns the next function's address so `jal` targets match again.
