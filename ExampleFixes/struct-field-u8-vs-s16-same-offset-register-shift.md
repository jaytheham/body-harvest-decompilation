### Struct field type conflict: same offset, different sizes across functions

When the same struct offset (e.g. `Unk80154318Entry.unkE` at 0x0E) is written with
`sh` (halfword) by some matched functions but `sb` (byte) by others:

- Define the fields as `u8` in the struct (the correct "actual" type for byte-access functions)
- For all existing matched functions that previously used `sh` at that offset (s16 assignment),
  replace `entry->unkE = val;` with `*(s16*)&entry->unkE = val;`

This preserves `sh` at the call site while using the correct `u8` type in the struct definition.

**Key symptom**: after changing struct fields from `s16` to `u8`, some already-matched
functions emit `sb` where target assembly has `sh`. This is the fix.

**Also apply the constant-last reorder fix**:
When storing a mix of memory-backed args and a constant (e.g. `unk11 = 0xC8`) to
struct fields, put the **constant store LAST** in C. IDO pre-loads all memory-backed
values first (into lower t-registers t1–t6), then loads the constant last (into t7).
Even though the constant is stored first in the target assembly, IDO reorders it.
Writing the constant assignment last in C matches the expected register allocation.

```c
// Wrong (constant first → t1=0xC8, args use t2-t7):
entry->unk11 = 0xC8;
entry->unk8 = arg1;
// ...

// Correct (constant last → args use t1-t6, t7=0xC8, reordered to store first in asm):
entry->unk8 = arg1;
// ... all args ...
entry->unk11 = 0xC8;
```

### Do NOT fix this by retyping the struct — the symbol is shared across overlays

`Unk80154318Entry` is one declaration for the *same VRAM address* (0x80154318) in several overlays,
and those overlays hold **different tables** there. `overlay_level/comet/318E20.c` needs the 0x14
field read as a signed halfword (`lh $t9,%lo(D_80154318+0x14)`, and the value carries -1/-3), while
`overlay_gameplay/outside/CFE30.c` has *matched* functions that use the same field as a byte:
`func_800CF070_DE020` (`if (D_80154318[var_s0].unk14 < 8)`) and `func_800D3C88_E2C38`
(`D_80154318[slot].unk14 = 0;`) both re-check to **score 0** with the field declared `u8`.

So a `u8 -> s16` retype in `include/structs.us.h` *looks* like the honest fix and is fatal: it turns
those `sb`/`lbu` into `sh`/`lh` and loses the outside matches. Keep the header at the width its
matched users prove and put `*(s16 *)&D_80154318[arg0].unk14` at the comet use site (precedent already
in `CFE30.c:2218`).

**Procedure when one field has two widths:** `grep -rn "\.<field>" src.us/`, `check` every hit that
is compiled, and let the matched ones pick the header's type; the dissenting overlay gets the cast.
Same rule as the note above, applied across overlays rather than across functions.
