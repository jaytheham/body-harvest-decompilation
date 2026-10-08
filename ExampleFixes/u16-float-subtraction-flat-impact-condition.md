# Halfword height subtraction and a shared float fallback

During work on `func_800F1DDC_100D8C`, the following form reproduced the
target's range-test branches, repeated float comparisons, and impact-call
halfword load/store ordering. The complete function remains unmatched.

```c
speed = D_80157FE4;
D_80159DE2 -= speed;
if (((D_80159DE2 >= 0x8001) || (D_80159DE2 == 0)) &&
    (speed != 0.0f)) {
    D_80159DE2 = 0;
    level = buildingInstances[D_80159DDF].yCoord;
    D_80157FE4_Write = 0.0f;
    func_80135D44_144CF4(x, level, z, 2.0f);
} else if (speed != 0.0f) {
    speed -= 0.2;
    D_80157FE4_Write = speed;
}
```

Keep the float test in the outer `&&`. Nesting it inside the range-test
body changes which path reaches the second float comparison and changes
the branch-delay instructions, even when the visible updates look equivalent.

Keep the height update as the compound assignment to the `u16` object when
matching this IDO pattern. Check the generated float-to-integer conversion
sequence as well as the final halfword store; a signed intermediate can
remove conversion instructions present in the target.

Preload the building's signed halfword height into a named integer before
clearing the speed. This allowed IDO to place `lh a1,2(v0)` before the call
and the speed's `swc1` in its delay slot. With the height read left directly
in the call, the float store preceded the halfword load instead.

The separate read/write symbols follow the existing
`read-compare-write-extern-cse-split-symbol.md` workaround. They refer to the
same speed object. The remaining address-load scheduling and initial-speed
constant placement need separate verification; this note does not establish
a full function or ROM match.
