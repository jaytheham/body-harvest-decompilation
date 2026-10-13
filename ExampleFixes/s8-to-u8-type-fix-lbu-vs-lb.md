### `s8` vs `u8` extern declaration determines `lb` vs `lbu` load instruction

When a byte-sized global variable is declared in `variables.us.h` with the wrong signedness, the compiler emits the wrong load instruction:
- `extern s8 D_80052ACC;` → generates `lb` (signed byte load)
- `extern u8 D_80052ACC;` → generates `lbu` (unsigned byte load)

**Symptom:** In a comparison like `if (D_80052ACC != 0)`, the target uses `lbu` but current uses `lb`.

**Fix:** Change the declaration from `s8` to `u8`:
```c
// Before (wrong):
extern s8 D_80052ACC;
// After (correct):
extern u8 D_80052ACC;
```

This gave a ~190-point score improvement in `func_8000F6B0_102B0` (FD80 segment).

**Key rule:** Always check whether the target assembly uses `lb` or `lbu` for byte loads and match the declaration signedness accordingly. The `lb` vs `lbu` distinction is purely determined by the C type (`s8` vs `u8`).
