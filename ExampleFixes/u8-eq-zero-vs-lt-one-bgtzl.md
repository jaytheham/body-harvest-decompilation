#### `u8 == 0` vs `u8 < 1` for `bgtzl`/`bnezl` generation

When comparing an unsigned 8-bit variable (`u8`) against zero, the C expression `var == 0` generates a `bnezl` instruction (branch if not equal to zero), while `var < 1` generates `bgtzl` (branch if greater than zero, signed) with an `lbu` load.

Both are semantically equivalent for unsigned types, but the compiler chooses different instructions.

**If the target uses `lbu` + `bgtzl`**:
```c
// ❌ generates bnezl (CURRENT)
if (... && (D_80048030 == 0)) {

// ✅ generates lbu + bgtzl (TARGET)
if (... && (D_80048030 < 1)) {
```

**If the target uses `lbu` + `bnezl`**:
```c
// ❌ generates bgtzl (CURRENT)  
if (... && (D_80048030 < 1)) {

// ✅ generates bnezl (TARGET)
if (... && (D_80048030 == 0)) {
```

**Why this works**: On MIPS, `bgtzl` is a signed branch (`> 0`), while `bnezl` is not-equal-to-zero. For unsigned values (0-255 loaded via `lbu`), both conditions are equivalent since no negative values exist. The IDO 5.3 compiler maps `== 0` to `bnezl` and `< 1` to `bgtzl`.
