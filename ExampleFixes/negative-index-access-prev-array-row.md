# Negative array index to access previous row of 2D array

## Prefer direct accesses through the same table first

Negative assembly displacements do not require negative indices in the C source.
In `func_80014508_15108`, direct accesses through
`D_800330B0_33CB0[currentLevel - 1][vehicle]` produce the target address calculations
when the sound-ID guards and pitch reads all use that same table expression.

The previous guards used a linker alias positioned one row before the table,
while pitch reads used the real table. Replacing only the pitch pointer with
direct accesses caused repeated address calculations. Replacing the guards with
the real table too let IDO share the address expressions and fold the row
subtraction into load displacements. Keeping an explicit entry pointer instead
retained two extra address adjustments.

For this function, the direct-access form clears the structural diff and matches
integer registers and offsets. The remaining float allocation issue was resolved
with the interpolation expression described in
[Direct bound read preserves the interpolation product](float-interpolation-direct-bound-read.md).
The final function and full ROM match exactly.

```c
if (settings[currentLevel - 1][vehicle].soundId == -1) {
    return;
}
/* Later reads use the same array root and index expressions. */
maxPitch = settings[currentLevel - 1][vehicle].maxPitch;
minPitch = settings[currentLevel - 1][vehicle].minPitch;
```

Try this form before the pointer workaround below, especially when earlier
guards use a different symbol aliased into the same table.

When a function accesses `array[currentLevel-1][stage]`, the compiler may use one of two
patterns:

## Pattern A (common): subtract before address computation
```
v0 = &array + (currentLevel-1)*rowSize + stage*entrySize
lh ..., 0(v0)   # positive offset
```

## Pattern B (negative offset): access from next row
```
v0 = &array + currentLevel*rowSize + stage*entrySize
lh ..., -rowSize(v0)   # negative displacement
```

Pattern B avoids the `- 1` subtraction in the address computation by pointing one
row past the target and using a negative displacement.

### To produce Pattern B in C

Instead of:
```c
ptr = &array[currentLevel - 1][stage];
val = ptr->field;
```

Use:
```c
ptr = &array[currentLevel][stage];
val = ptr[-rowCount].field;   // where rowCount is the number of elements per row
```

Here `ptr[-rowCount]` accesses the element `rowCount` positions before `ptr`, which
in a 2D array gives the same column in the previous row.

Example (GateEntry array with 8 entries per row, 10 bytes each):
```c
GateEntry *gate = &D_8003E0FC[currentLevel][stage];
gateState = gate[-8].openness;   // accesses D_8003E0FC[currentLevel-1][stage].openness
x = gate[-8].xPosition << 8;     // via negative displacement in lh
```

This produces the address `v0 = &D_8003E0FC + currentLevel * 80 + stage * 10` and
accesses fields at negative offsets like `-0x50(v0)` or `-0x4a(v0)`.

### Additional notes for matching
- Use explicit `if/else` for abs: `if ((-x) < x) { abs = x; } else { abs = -x; }`
  instead of `abs = -x; if (abs < x) abs = x;` to get `beqz` + two `move` delay slots.
- Variable declaration order affects which s-registers are assigned.
