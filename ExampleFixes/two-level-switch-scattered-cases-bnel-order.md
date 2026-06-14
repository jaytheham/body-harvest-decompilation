# Two-Level Switch with Scattered Case Values + Post-Switch Code + `bnel` Comparison Order

## Problem
A function with a switch statement where case values are scattered across two distinct ranges (e.g., 0x19-0x41 and 0x63-0x76) and post-switch code (`if (cond) val += C;`) that needs to be inlined into each case.

## Symptoms
- Closeness starts very high (e.g., 13280)
- Jump table addresses differ between target and current
- `bnel` instruction has swapped operand order (`bnel v0, t7` vs `bnel t7, v0`)
- Post-switch code is hoisted into a shared epilogue instead of inlined per-case
- Case blocks appear in the wrong order in assembly

## Fixes Applied

### 1. Delete jump table const arrays
When a function has `const u32 jtbl_...[]` arrays defined at file scope (used to ensure correct rodata layout during NON_MATCHING), delete them when the C code becomes active. The C compiler generates its own jump tables.

### 2. Correct switch case values
The case values in the original placeholder switch were wrong. Read the target assembly's jump tables to determine the exact case mappings. The target uses TWO jump tables:
- First table (for values >= 0x42): checks `(val - 0x63) < 0x14`
- Second table (for values < 0x42): checks `(val - 0x19) < 0x29`

### 3. Inline post-switch code into each case with `return`
Instead of:
```c
switch (x) {
    case A: val = a; break;
}
if (cond) val += C;
```
Use:
```c
switch (x) {
    case A:
        val = a;
        if (cond) val += C;
        return;
}
```
This prevents IDO from hoisting the post-switch check into a shared epilogue.

### 4. Swap `==` comparison order for `bnel`
The comparison `a == b` vs `b == a` affects which register is compared first in `bnel`. Write `D_80052B34 == D_8013FD78_14ED28` instead of `D_8013FD78_14ED28 == D_80052B34` to get `bnel t7, v0` instead of `bnel v0, t7`.

### 5. Reorder switch cases to match target assembly order
The order of `case` labels in the source must match the order case blocks appear in the target assembly. This is NOT necessarily sorted order. Read the target assembly to determine the correct ordering.

## Example
Before:
```c
switch (D_801601D8) {
    case 0x19: D_801601D8 = 0xD8; break;
    case 0x1A: D_801601D8 = 0xD9; break;
    case 0x1B: D_801601D8 = 0xDA; break;
    case 0x1C: D_801601D8 = 0xDF; break;  // WRONG value
    // ... more wrong cases
    default: return;
}
if (D_800313D0_31FD0 == 2) {
    D_801601D8 += 0xC;
}
```

After:
```c
switch (D_801601D8) {
    case 0x19:
        D_801601D8 = 0xD8;
        if (D_800313D0_31FD0 == 2) D_801601D8 += 0xC;
        return;
    case 0x1A: ... return;
    case 0x1B: ... return;
    case 0x2C: ... return;
    case 0x67: ... return;
    case 0x63: ... return;
    case 0x1C: ... return;
    case 0x41: ... return;
    case 0x76: ... return;
    case 0x73: ... return;
    case 0x72: ... return;
    case 0x74: ... return;
    default: return;
}
```
