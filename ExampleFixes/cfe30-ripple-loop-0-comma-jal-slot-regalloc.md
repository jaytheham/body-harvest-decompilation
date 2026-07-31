### CFE30 ripple/shield loop (`func_800C4AA0_D3A50`) — several combined fixes

The ripple/shield-iteration loop in `CFE30.c` iterates `D_80154318` entries (0x1C stride),
calling `func_800C1A4C_D09FC` when `entry->unk12 < 4`, otherwise decaying color bytes toward
`D_8013DFA8_14CF58[sub[9]]` targets and comparing all three to trigger `sub[9] = rand() % 3`.

The match (1003 → 0) required **four** combined structural fixes, in order of impact:

#### 1. Do NOT declare a named `entry` pointer — access `D_80154318[idx]` directly

With a named `Unk80154318Entry *entry = &D_80154318[idx]`, IDO spilled the base into a
callee-saved reg via an extra `move s3, v0` (the cross-branch backup described in
`bnel-delay-slot-subpointer-plus8.md`). Instead, write `D_80154318[idx].unk4`,
`D_80154318[idx].unk2`, etc. directly and let IDO's CSE keep the base in `s1` with no extra move.

#### 2. Put the `nextIdx = entry->unk4` load BEFORE the call

```c
// Right (target has `lh s2, 4(s1)` in the jal delay slot):
nextIdx = D_80154318[idx].unk4;
func_800C1A4C_D09FC(idx, 0, 1);
idx = nextIdx;

// Wrong (a2=1 ends up in the jal delay slot, load pushed after the call):
func_800C1A4C_D09FC(idx, 0, 1);
nextIdx = D_80154318[idx].unk4;
idx = nextIdx;
```
Writing the load first lets IDO schedule it into the `jal` delay slot and hoist the constant
arg `a2 = 1` before the `unk12 < 4` branch (matching `addu s1,s5,t6; lbu t7,0x12(s1)` region).

#### 3. Do NOT keep the color result in a named `s32 blue` variable

```c
// Right — result stays in a temp (t8), `sub[8] & 0xFF` reuses it:
sub[8] = func_800C4A64_D3A14(sub[8], D_8013DFA8_14CF58[sub[9]][2]) + sub[8];

// Wrong — a named `s32 blue` gets allocated to a0 (arg reg), shifting ALL temp
// registers in the comparison block by one:
blue = func_800C4A64_D3A14(sub[8], D_8013DFA8_14CF58[sub[9]][2]) + sub[8];
sub[8] = blue;
```
A named variable for a value that is stored to a byte array and then masked (`& 0xFF`) is
placed in `a0`; referencing the array element directly keeps the addu result in the temp
register `t8` and IDO's value recognition reuses `t8` for `sub[8] & 0xFF`.

Also keep the *operand order* of the add matching: `func(...) + sub[8]` (result first in C)
yields `addu t8,t7,v0` (target); `sub[8] + func(...)` yields `addu t8,v0,t7` (wrong order).

#### 4. `(0, expr)` comma to fix the final comparison temp registers

The very last mismatch was the blue-check temp allocation:
`table[2]`→t7 / mask→t6 / `mfhi`→t8 (current) vs `table[2]`→t6 / mask→t5 / `mfhi`→t7 (target).
Writing the masked value as `(0, sub[8] & 0xFF)` in the comparison shifts the allocation down
by one, matching the target exactly (the `(0, x)` idiom documented in DecompHints creates a
cfe temp that adjusts regalloc):

```c
if ((sub[6] == D_8013DFA8_14CF58[sub[9]][0]) &&
    (sub[7] == D_8013DFA8_14CF58[sub[9]][1]) &&
    ((0, sub[8] & 0xFF) == D_8013DFA8_14CF58[sub[9]][2])) {
    sub[9] = func_800038E0_44E0() % 3;
}
```

#### Loop form

The outer redundant guard `if ((idx != -5) && (idx != -6)) { do { ... } while (...); }`
is required — IDO does **not** eliminate the redundant pre-loop check, and it produces the
`beql idx,-5,epilogue` + `beq idx,-6,ra-label` outer guard plus the do-while condition
(`beq idx,-5,ra-label; li at,-6; bne idx,at,loop_top`). `while(1)` with `break` and the
do-while compile identically here, so keep whichever reads naturally.
