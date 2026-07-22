### Named temp variable vs inline pointer arithmetic (register allocation)

When stepping through an 8-byte record stream, having a named variable for "next entry pointer" can force the compiler to allocate it to `a0` instead of `t8`.

**Before (bad):**
```c
s8 *entry;
...
do {
    entry = *arg0 + 8;
    if (**arg0 == 1) depth++;
    *arg0 = entry;
} while (depth != 1 || entry[0] != 6);

a3 = *(s32 *)(entry + 4);
```

This declares `entry` as an `s8*`, which IDO places in `a0` instead of the target's `t8`.

**After (good):**
```c
do {
    if (**arg0 == 1) depth++;
    *arg0 += 8;
} while (depth != 1 || **arg0 != 6);

a3 = *(s32 *)(*arg0 + 4);
```

By using inline `*arg0 += 8` and `**arg0` (which reads from the updated position), the "next entry" pointer ends up in temp register `t8` matching the target.

**Used in:** `func_80088FFC_97FAC` (stream walking with 8-byte push/pop/value entries)
