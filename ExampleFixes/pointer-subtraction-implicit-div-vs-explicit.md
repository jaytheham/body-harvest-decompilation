# Pointer Subtraction: Implicit vs Explicit Division by Element Size

## Pattern

When a function checks `(arg0 - base_array) / N == K` AND separately computes an array index that also multiplies by N (e.g., `array[idx]` where `sizeof(array element) == N`), the compiler may:
1. Load N into a **t-register** (not `$at`) to reuse for both the division and the multiplication
2. Generate `multu` for the index multiplication (using the cached t-reg)
3. Emit **div-by-zero checks** (because t-reg is used, not the single-use `$at` pattern)

## Example Problem

```c
// arg0 is u8*, D_80145BE0_154B90 is u8[]
// WeaponEntry_80129864 has size 0x18 = 24
building = &buildingInstances[D_8015FAD0[arg1].unk1E >> 4];
if ((arg0 - D_80145BE0_154B90) / 24 == 0xA) { ... }
```

This generates: `li t1, 0x18; div zero, t2, t1; multu t4, t1` — the constant 24 is reused from t1.

## Fix

Cast `arg0` to the table element type (`const WeaponEntry_80129864 *`) at the comparison. Then the division by N becomes implicit in pointer subtraction:

```c
void func(BuildingInstance *arg0, s16 arg1) {
    BuildingInstance *building;

    building = &buildingInstances[D_8015FAD0[arg1].unk1E >> 4];

    if (((const WeaponEntry_80129864 *)arg0 - D_80145BE0_154B90) == 0xA) { ... }
}
```

### Why This Works

- `const WeaponEntry_80129864 * - const WeaponEntry_80129864 *` compiles to: byte-subtract (`subu`) then divide by `sizeof(WeaponEntry_80129864)` using `$at`. Since `$at` is freed after the div, the building index multiplication cannot reuse it, so IDO falls back to the shift expansion (`sra/sll/subu/sll`).
- The base declaration (`const WeaponEntry_80129864[]`) does NOT need to change; cast `arg0` at the point of comparison.

## Key Observation for Ordering

Place `building = &buildingInstances[...]` **before** the `if` condition. This lets IDO hoist the entry ptr + unk1E computation into the `div` latency window (between `div` and `mflo`), matching the target's instruction scheduling.

