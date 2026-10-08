# loadLevelData terrain-loop code generation

The enabled `loadLevelData` C implementation matches with IDO 5.3
`-O2 -mips2 -32`: full ROM verification reports `OK` and the function diff
reports `CURRENT (0)`.

Use ordinary nested `for` loops over `D_801FEA30[row][j]`, with both counters
starting at zero and testing `!= 0xFF`. Load the cell into a `u16` local,
apply two separate compound XOR assignments, then store it:

```c
new_var = D_801FEA30[row][j];
new_var ^= (j % 2) << 14;
new_var ^= (row % 2) << 13;
D_801FEA30[row][j] = new_var;
```

IDO peels the first three updates and unrolls the remaining 252 in groups
of four. The compound halfword assignments reproduce the seemingly unusual
prefix load/store order, extra `move`, and register allocation. Using an
integer XOR temporary or hand-written prefix updates changed scheduling.
Signed `s32` counters and `% 2` retain the signed-remainder correction branches.

Direct array access generates both row pointers automatically (`a3` for the
peeled prefix and `t1` for the remaining cells); explicit pointer arithmetic
is unnecessary.

In the switches that skip ROM blocks, update the ROM cursor before the DMA
call (`var_s0 += offset;` then pass `var_s0`). Passing `var_s0 + offset`
directly scheduled `lui a0` in the branch delay slots instead of the target's
`addiu a1`.

The local descriptor copies are present even though the first is unused.
Preserve the packed 18-byte, packed 3-byte, and 16-byte struct copies: they
produce the target's `lw`/`lhu`, `lwr`/`swr`, and stack layout respectively.
Declare the ROM cursor before the descriptors and preserve two unused `s32`
local slots before the halfword temporary. This gives frame size `0x70` and
descriptor offsets `0x48`, `0x44`, and `0x34`.
