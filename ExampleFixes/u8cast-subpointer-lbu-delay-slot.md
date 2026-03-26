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
