# Switch Jump Table: Separating a Zero-Action Case to Use Default Fallthrough

## Problem
A `switch` statement with grouped cases (e.g. `case 0x98: case 0x99: case 0x9A: case 0x9B:`) that all do the same action will make the compiler put the same handler address in all the corresponding jump table entries. If the target ROM has a particular case (e.g. case 0x98) pointing to the default/end label instead of the handler, the C code must separate that case.

## Example
### Incorrect (groups all same-action cases):
```c
switch (arg0[0]) {
    case 0x98:
    case 0x99:
    case 0x9A:
    case 0x9B:
    case 0xAF:
        arg0[1] = func_8007452C_834DC();
        break;
    case 0xAD:
        arg0[1] = func_8007452C_834DC();
        arg0[2] = func_8007452C_834DC();
        break;
}
```
This generates a jump table where entry [0] (case 0x98) = handler address (e.g. 0x800745B8).

### Correct (separates the zero-action case):
```c
switch (arg0[0]) {
    case 0x98:
        break;
    case 0x99:
    case 0x9A:
    case 0x9B:
    case 0xAF:
        arg0[1] = func_8007452C_834DC();
        break;
    case 0xAD:
        arg0[1] = func_8007452C_834DC();
        arg0[2] = func_8007452C_834DC();
        break;
}
```
This generates a jump table where entry [0] (case 0x98) = end/default address (e.g. 0x800745DC), matching the target.

## When to Apply
When examining the target jump table (in rodata), if a particular case value's jump table entry points to the default/end label rather than the shared handler, it means that case was written separately in the original source, even though its behavior is functionally identical to just falling through to default.

## Identical Instructions Can Hide Incorrect Case Labels

In `func_802D6D20_18F830`, the instruction diff was identical while the full ROM checksum failed. The target jump table had case 4 pointing to the epilogue, with the remaining action handlers at cases 5 through 14. The existing C instead assigned those handlers to cases 4 through 13 and grouped case 14 with the empty cases.

Moving the action case labels up by one and grouping case 4 with the empty cases produced `build/bh.us.z64: OK`. The handler instruction order and switch range were already correct, so only the generated jump table entries changed. When instructions match but the ROM does not, compare every target jump table entry against its C case label. Remove the placeholder table when enabling the C function so the compiler generates the replacement.
