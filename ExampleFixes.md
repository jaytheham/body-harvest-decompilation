https://hackmd.io/vPmcgdaFSlq4R2mfkq4bJg
https://github.com/n64decomp/oot/blob/master/docs/guides/-O2%20decompilation%20(for%20IDO%205.3).md
https://github.com/zeldaret/mm/tree/main/docs/tutorial
https://github.com/zeldaret/oot/blob/9963e7f5d5fa8caee329f6b40e393d8a2c45390b/docs/tutorial/contents.md

## Registers

### Incorrect registers

| Target               | Current              |
| -------------------- | -------------------- |
| `0:    li      t8,1` | `0:    li      t0,1` |

It may be that the function params are incorrectly typed:
| Incorrect C | Matching C |
| --- | --- |
| `void func(s8 arg0, s8 arg1) {` | `void func(u8 arg0, u8 arg1) {` |

If a char/short param is being `& 0xFF`/`& -xFFFF` in ASM it may not need to be in the c code and doing so will throw off the register alloc.

Rather than loading a value from an array/pointer into a temp variable manually to reference it multiple times - it may be correct to just directly reference the array/pointer every time: `D_80048198[arg0].unk10`

### v0

If v0 is being used for a variable and should not be, the function may need to return a value - which should use v0.

Loading and checking of a value being optimised away because it's known at compile time? Can prevent that by altering the value:
u8 continueOn = 1;
continueOn &= 1;

### Branching

If a branch instruction's registers are reversed, reversing the order in C may help. If not, and one is a literal value, try putting the literal into a var.

If you see `+ 1` happening to a var in a loop consider it may be a `for(;;)` loop
