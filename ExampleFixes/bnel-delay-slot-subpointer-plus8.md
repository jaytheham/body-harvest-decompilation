### `bnel` delay slot via sub-pointer at struct+8

When you see the pattern:
```asm
addu    v0, s2, t6         ; v0 = &array[i]  (struct base)
lbu     t7, 0x14(v0)       ; check field at +0x14 (e.g. unk14)
addiu   v1, v0, 8          ; v1 = v0 + 8  (sub-pointer to mid-struct)
bnel    s4, t7, else_label
  lbu   t0, 0xC(v1)        ; delay slot: load unk14 via v1 (= v0+8+0xC = v0+0x14)
```

The `addiu v1, v0, 8` and the `lbu t0, 0xC(v1)` in the `bnel` delay slot indicate the original code used:
- A **direct struct pointer** (`Unk80154318Entry *`) for the `if` condition and `unk4` reads.
- A **byte sub-pointer** (`u8 *p = (u8 *)&entry->unk8`) for the `else` branch's `unk14 = unk14 + 1`.

The correct C form is:
```c
p = (u8 *)&D_80154318[var_s0].unk8;
if (D_80154318[var_s0].unk14 == 9) {
    temp_s1 = D_80154318[var_s0].unk4;
    func_call(var_s0, ...);
    var_s0 = temp_s1;
} else {
    p[0xC] = (u8)(p[0xC] + 1);    // p[0xC] == unk14
    var_s0 = D_80154318[var_s0].unk4;
}
```

**Key lessons:**

1. **Do NOT declare a named `entry` pointer variable** (e.g. `Unk80154318Entry *entry`). With s0-s6 all occupied, IDO will spill the entry pointer into `a0` (`move a0, v0`) as a cross-branch backup, creating mismatch. Instead, access `D_80154318[var_s0]` directly — IDO's CSE keeps it in `v0` as a pure temp.

2. The `u8 *p` sub-pointer *must* be computed **before** the `if` statement so the compiler can hoist the `addiu v1, v0, 8` instruction before the `bnel`, filling its delay slot with `lbu t0, 0xC(v1)`.

3. This sub-pointer-at-unk8 pattern appears across several functions in CFE30.c: `func_800C80F0_D70A0`, `func_800C8184_D7134`, etc., all use `p = (s8 *)&entry->unk8`.
