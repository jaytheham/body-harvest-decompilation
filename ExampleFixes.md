https://github.com/zestydevy/dinosaur-planet/blob/master/docs/Guide.md

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

If you see `+ 1` happening to a var in a loop consider it may be a `for(;;)` loop.

If you see missing `b` after another type of branch you may have if `if` that needs its `else` added.

A variable being decremented and being checked for != 0 is also usually a `while (var--).`

### Delay-slot pointer setup

For patterns like:

- compare index against sentinel
- branch delay slot does `addu baseReg, baseReg, index`
- then `lbu` from that pointer
- then increment/store index

use an explicit pointer plus temp byte value in C:

`u8* ptr = &D_xxx[index];`
`u8 value = *ptr;`
`D_index = index + 1;`
`return value;`

This shape can preserve both branch delay-slot pointer arithmetic and the `lbu` before index increment/store ordering.

### Struct stride for stable index math

If a global is really an array of fixed-size records (for example, stride `0x50`) and the asm does:

- `sll idx, v0, 2`
- `addu idx, idx, v0`
- `sll idx, idx, 4`
- store at base + `idx`

then declaring a typed struct array can produce better codegen than manual byte-pointer math.

Example shape:

`typedef struct { u32 unk0; u8 pad4[0x4C]; } UnkX;`

`extern UnkX D_xxx[];`

`D_xxx[index].unk0 = D_src[arg];`

This can eliminate extra temp registers in the multiply/shift chain and recover exact reg reuse.

### `bnel` loop + record walk (0xA stride)

When asm walks records with:

- `lhu` from current record
- `bnel` compare against function arg
- delay slot `i++`
- pointer increment by `0xA` in loop branch delay slot

prefer a `do { ... } while (...)` loop with a typed `u16*` pointer and `ptr += 5`.

Example shape:

`i = 0;`
`ptr = D_recordBase;`
`do {`
`    if (arg == *ptr) { callee(i); }`
`    i += 1;`
`    ptr += 5;`
`} while (i < D_count);`

Using `ptr += 5` (instead of byte casts) helps IDO emit `addiu ptr, ptr, 0xA` and keep the compare/increment ordering aligned with `bnel` delay-slot behavior.

### Constant encoding for -1 vs 255

When storing -1 to a `u8` array element, the compiler may optimize the constant to 255 (0x00FF) instead of -1 (0xFFFF), causing a mismatch in the immediate encoding.

To force the exact encoding `addiu reg, zero, -1` (0xFFFF), use a temporary `s8` variable:

```c
s8 neg_one = -1;
byteArray[index] = neg_one;
```

This prevents the compiler from optimizing the constant and ensures the correct instruction encoding.

### Pointer to global for register allocation

When decrementing a global variable and immediately using its new value, using a pointer can improve register allocation:

Instead of:

```c
temp = D_global - 1;
D_global = temp;
array[temp] = value;
```

Use:

```c
s32* ptr = &D_global;
*ptr = *ptr - 1;
array[*ptr] = value;
```

This pattern helps IDO keep the address in a register (v0) and reuse it for both the load-modify-store and the subsequent array index, matching the original assembly's register usage (t9 → t0 pattern).
