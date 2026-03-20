### Extra `mov`'s

- move variable assignments around
- `if (condition)` causes different behavior than `if (condition != 0)`. Same with `if (!condition)` vs `if (condition == 0)`. See "int promotion" below.
- **`s32` function with no explicit `return` causes `move v0, reg` only in delay slots**: When a function returns `s32` and the compiler fills branch delay slots with `move v0, s1` (keeping v0 pre-loaded with the return value throughout), do NOT add an explicit `return i` at the end. An explicit `return i` forces an extra `move v0, s1` before `jr ra` AND swaps the register restore order for s0/s1 in the epilogue. Declare the function as `s32` but let it fall off the end without an explicit return — IDO will leave v0 set from the last delay-slot fill and no extra epilogue instruction is needed. Pattern: `do { ... alien--; } while (i--);` (no `return i`).
Also for any return in a loop, if the final `jr ra` is accompanied by an unwanted mov, it may simply be that the function should end without an explicit return statement.

### u8 vs s8 for global variables

Check which load instruction is used: `lbu` = `u8`, `lb` = `s8`. Using the wrong type will generate the wrong load instruction. E.g. `D_80047F80` should be `extern u8` (not `s8`) because functions access it with `lbu`.
