# Dispatcher reuses its unused second argument

Matched `func_802D4CD0_18D7E0` with IDO 5.3 -O2.

The target saves the incoming `a1` to its argument home, then copies `a0`
into `a1` before dispatching. Keep both s32 parameters and assign
`arg1 = arg0;` before the bounds check. Switch on `arg1`, and use `arg0`
as the printf argument in the default case. This reproduces the argument
save and register reuse without adding a local variable.

The low command range calls a callback array and returns immediately.
The remaining switch has cases 0x14 through 0x19, then 0x45, then 0x44
in source order. IDO generates the target's range checks and six-entry
jump table. Remove the placeholder jump-table const when enabling C.

All callbacks in this array take no arguments. Declaring the table as
`void (*D_802DDBF4_196704[])(void)` allows a direct indexed call without
a function-pointer cast and preserves the exact assembly. Update the
extern declaration in `include/variables.us.h` at the same time.

Verification: `tools/make.ps1` reported `build/bh.us.z64: OK` both before
and after correcting the callback table type; the function diff had no
differences.
