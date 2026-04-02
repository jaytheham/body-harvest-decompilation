### bgez/andi `% 16` ring-buffer: two local vars needed, store via write alias before call

**Pattern:** Function reads `u8 index`, accesses `s8 array[index % 16]`, increments index, calls a function.

**Key finding:** Using TWO named `s8` local variables (`idx` and `arr_val`) instead of one temp variable (`temp_a0`) gives slightly better register allocation:
- One var (`s8 temp_a0`): andi uses t7 → score ~585
- Two vars (`s8 idx; s8 arr_val`): andi uses v1 → score ~575 (closer to target)

**Write alias ordering:** Use the `_W` alias for the write BEFORE the function call:
```c
idx = (s8)(D_80033C80_34880 % 16);
arr_val = D_80033C70_34870[idx] + 0xF;
D_80033C80_W = D_80033C80_34880 + 1;  // _W alias, BEFORE the call
func_80015C94_16894(arr_val, 4);
```
- Store after call → jal 15c9c (wrong, IDO delay-slot optimization skips callee prologue) or causes reload
- Store before call with _W alias → jal 15c94 (correct), store at correct position

**Remaining hardcoded register issue (score 575, not 0):**
The sister function `func_80013324_13F24` (using `% 15`) generates matching code because:
- `div` instruction uses `at` as the divisor operand (at = 15), preventing early pre-load of write address into `at`
- After div, `at` is free → compiler uses `at` for array base → andi uses `a0` in bgez delay slot

With `% 16` (power-of-2, bgez/andi pattern):
- No instruction uses `at` as divisor → compiler freely pre-loads write alias address into `at` at 13fbc
- This forces array base into `a0` → andi uses `v1` → suboptimal allocation
- The permuter (10,000 iterations) also could not find a better score than 575

**Reminder:** The `jal 15c9c` (vs correct `jal 15c94`) happens when sra sign-extension ends up in the jal delay slot. IDO then "skips" the callee's first 2 instructions (which don't use a0/a1). Avoid this by ensuring sign extension completes before the jal (which requires the store, not the sra, in the delay slot).
