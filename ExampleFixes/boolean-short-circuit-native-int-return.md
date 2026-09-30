# Boolean returns: native int versus s32

`func_8013B480_14A430` in `src.us/overlay_gameplay/outside/148000.c` matches using direct short-circuit returns and an `int` return type:

```c
if (type == 0x13) {
    return arg0 >= 0xD && arg0 < 0x14;
} else if (vehicleTypes[type].unk4C & 0x04000000) {
    return arg0 < 6 || arg0 == 0xB;
} else {
    return arg0 == 0xB || arg0 == 0xC;
}
```

The project defines `s32` as `long`. With an `s32` return, IDO evaluates these native-int comparisons through `v1` and then moves their result into `v0`; the target uses `v0` directly and shares the final return. Changing both the definition and `include/functions.us.h` declaration to `int` removes those moves and reproduces the target's branches and return delay slots. Changing only a named result local to `int` was insufficient.

Verified with the prescribed ROM build and a zero-score function diff. The ROM still fails verification while the separate HUD renderer remains unmatched.
