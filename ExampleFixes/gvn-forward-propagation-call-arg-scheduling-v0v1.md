### GVN forward-propagation of global assignment in call arg fixes v0/v1 and lui-batch ordering

When a global is set to an address constant (`D_global = &D_symbol`) and then that
address is passed as an argument to a function call (`osSyncPrintf(&fmt, &D_symbol, ...)`),
writing `&D_symbol` explicitly in **both** the assignment and the call arg causes IDO to:

1. Treat both occurrences as an independent CSE, scheduling the `lui a1` for
   `&D_symbol` **first** in the lui batch (before t0/t1/t2).
2. Assign `v0` to the first address CSE in the function (e.g. `&D_80034460`).

**Fix**: pass the **global pointer itself** (`D_global`) as the call argument instead
of re-writing `&D_symbol`. IDO's GVN (forward-propagation) pass sees that `D_global`
was just assigned `&D_symbol`, propagates the constant, and schedules the address
computation **last** in the lui batch (via a staging register `t3`, then
`addiu a1, t3, lo` after `sw ra`).

This also fixes the v0/v1 register swap: the compiler can now see that `&D_global`
(for the later `sw a1, 0(v_reg)` write) should use `v0`, and the first global's
address (`&D_80034460`) uses `v1`.

**Wrong (duplicated `&D_8006C450` in assignment and call; score 325):**
```c
D_8006C550 = &D_8006C450;
osSyncPrintf(&D_80038500_39100, &D_8006C450, &D_80034468, &D_80034470);
```

**Correct (post-assignment global passed to call; score 0):**
```c
D_8006C550 = &D_8006C450;
osSyncPrintf(&D_80038500_39100, D_8006C550, &D_80034468, &D_80034470);
```

**Pattern context** (func_80019F80_1AB80): save-and-replace pattern where four
globals (D_80034460, D_80034468, D_80034470, D_8006C550) are backed up and then
set to new address values, followed by an osSyncPrintf debug print that uses some
of the new addresses as arguments.
