### Extra `mov`'s

- move variable assignments around
- `if (condition)` causes different behavior than `if (condition != 0)`. Same with `if (!condition)` vs `if (condition == 0)`. See "int promotion" below.
- **`s32` function with no explicit `return` causes `move v0, reg` only in delay slots**: When a function returns `s32` and the compiler fills branch delay slots with `move v0, s1` (keeping v0 pre-loaded with the return value throughout), do NOT add an explicit `return i` at the end. An explicit `return i` forces an extra `move v0, s1` before `jr ra` AND swaps the register restore order for s0/s1 in the epilogue. Declare the function as `s32` but let it fall off the end without an explicit return — IDO will leave v0 set from the last delay-slot fill and no extra epilogue instruction is needed. Pattern: `do { ... alien--; } while (i--);` (no `return i`).
Also for any return in a loop, if the final `jr ra` is accompanied by an unwanted mov, it may simply be that the function should end without an explicit return statement.

### u8 vs s8 for global variables

Check which load instruction is used: `lbu` = `u8`, `lb` = `s8`. Using the wrong type will generate the wrong load instruction. E.g. `D_80047F80` should be `extern u8` (not `s8`) because functions access it with `lbu`.

### Early `return <const>;` vs an if/else single return (the extra tail mov)

An early-return guard and an if/else that assigns the same constant compile to the SAME two
return paths, but only the if/else form lets IDO fill the final `jr $ra` delay slot.

- `if (G >= N) { return 0xFB; } ... return orig;` emits the tail as `move v0,v1` / `jr $ra` /
  `nop` - the copy is placed before the branch and the slot is wasted.
- `if (G >= N) { orig = 0xFB; } else { ... } return orig;` (single return at the join) emits
  `jr $ra` / `or v0,v1,zero` - the slot is filled and the nop disappears.

Both spellings still produce the early `jr $ra` + loaded constant for the guard branch (IDO
duplicates the epilogue for the constant case), so do not "fix" this by deleting the guard:
convert the early return into an assignment and move the second return out to the join.

Measured on `func_80083A58_53F08` (`overlay_gameplay/frontend/52690.c`, 47 instr): early-return
form scores 380 with `ins_diff` delta +1 (the only non-alias rows are the tail), if/else form
scores 0 in one edit. Twenty-two other variants (cast, `s16`/`s32` locals, pad local, `for(;;)`,
`while`, reordered `j = orig`, `& 0xFF` on the copy) all stayed at 380 or worse - the guard's
*statement form*, not the operand spelling, is the lever.
