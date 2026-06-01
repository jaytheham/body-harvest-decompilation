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

**Reminder:** The `jal 15c9c` (vs correct `jal 15c94`) happens when sra sign-extension ends up in the jal delay slot. IDO then "skips" the callee's first 2 instructions (which don't use a0/a1). Avoid this by ensuring sign extension completes before the jal (which requires the store, not the sra, in the delay slot).
