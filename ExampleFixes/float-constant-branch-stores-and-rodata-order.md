# Branch-local float stores with the target register

In `func_800F1DDC_100D8C`, an empty condition after the two branch-local stores preserved both stores and their literal-load order without emitting a comparison or branch.

## Reusing a different existing float local fixes the remaining register

For this function, reusing the existing `temp` local (also used for the
terrain height in case 4) for the initial speed, its two stores, and the
empty condition changed those four `$f2` instructions to the target's
`$f0`. Reusing `speed`, the local used for case 1's subtraction, had kept
`$f2` in case 0 despite that same local using `$f0` in case 1. Both forms
had the target stack layout.

The retained initialization is:

```c
if (currentLevel == LEVEL_GREECE) {
    temp = 15.9f;
    D_80159DE2 = 0x28F;
    D_80157FE4_Write = temp;
} else {
    temp = 13.7f;
    D_80159DE2 = 0x1F4;
    D_80157FE4_Write = temp;
}
if (temp) {
}
```
