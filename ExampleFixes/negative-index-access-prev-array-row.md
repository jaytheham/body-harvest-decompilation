# Negative array index to access previous row of 2D array

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
