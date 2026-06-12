# `bnel` vs `bne` in early-exit patterns

**Issue**: `if (x == CONSTANT) return 0;` at the start of a function generates `bnel` (likely branch) in IDO 5.3 -O2, but the target may have `bne` (not likely).

## When it happens
- Function has an early `if (ch == 0x20) return 0;` pattern
- Most characters are NOT space, so branch is "likely" taken → IDO uses `bnel`
- Target uses `bne` with `sw a0, 0(sp)` in the delay slot (saving arg0 before a0 is reused)

## Key differences
- `bnel`: delay slot only executes when branch IS taken → compiler puts useful work there
- `bne`: delay slot always executes → compiler puts harmless side-effect there (stack save)

## Impact
The `bnel` vs `bne` at the very start cascades into register allocation differences throughout the entire function, making all subsequent temp registers differ by one.

## Approaches that did NOT fix it
- Using `s32 ch = arg0 & 0xFF` vs `if ((arg0 & 0xFF) == 0x20)`
- Making `ch` a `u16`, `s32`, or removing it entirely
- Using `temp = arg0; ch = temp & 0xFF;` to force stack save
- `(void)&arg0;` to force address-taking
- `ch = arg0; ch &= 0xFF;` (two-step assignment)
- Inverted condition `if (ch != 0x20) { ... } return 0;` → changes to `beq` branching far
- Single-line `if (ch == 0x20) return 0;`
- Switch statement
- Adding dummy variable initializations
- Declaring variables with different types

## Possible (untested) approaches
- Using `__asm__` or pragma to control branch likelihood
- Different compiler flag (e.g., `-Woff,,` or removing `-likely-branches`)
- Function inlining at call site affecting codegen
