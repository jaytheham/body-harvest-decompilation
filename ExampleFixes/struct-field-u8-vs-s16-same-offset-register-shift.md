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
