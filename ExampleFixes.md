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

If a char/short param is being `& 0xFF`/`& 0xFFFF` in ASM it may not need to be in the c code and doing so will throw off the register alloc. This hints that the arg in question is a u8/u16 ?

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

#### Converting do-while to for loops

When m2c generates a simple counter-based do-while loop that increments a variable until it reaches a limit, converting it to a for loop often matches perfectly:

**m2c output (do-while):**

```c
var_s0 = 2;
do {
    if (func(var_s0) != 0) {
        // body
    }
    var_s0 += 1;
} while (var_s0 != 0xB);
```

**Matching C (for loop):**

```c
for (i = 2; i < 11; i++) {
    if (func(i) != 0) {
        // body
    }
}
```

Key transformations:

- Replace `var_s0 = start; ... var_s0 += 1; ... while (var_s0 != limit)` with `for (i = start; i < limit; i++)`
- Rename the variable to a more idiomatic name like `i`
- Use `<` instead of `!=` for the loop condition (mathematically equivalent for incrementing loops)

#### Getting `bnez` vs `beqz` after `slt`

When you have assembly like:

```
slt $at, $a, $b      # $at = (a < b)
bnez $at, label      # branch if a < b
```

To generate `bnez` instead of `beqz`, negate the condition and flip the if/else blocks:

```c
if (!(a < b)) {
    // false case
} else {
    // true case (where bnez branches to)
}
```

This makes the compiler branch to the else block when the condition is true, producing `bnez`.

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

### Bit extraction pattern order

When extracting a nibble or other bit field from a word, the order of operations matters for matching assembly:

**Incorrect (simplified):**

```c
value = (*ptr >> shift) & 0xF;
```

**Correct (original pattern):**

```c
value = (s32) (*ptr & (0xF << shift)) >> shift;
```

While these are mathematically equivalent, IDO generates different instruction sequences. The original pattern produces:

- Load value into register
- Create shifted mask (0xF << shift)
- AND with mask
- Shift right

The simplified pattern can cause the compiler to optimize differently and generate non-matching assembly. Always preserve the mask-then-shift order when it appears in mips_to_c output.

### Variable declaration order affects register allocation

The order in which local variables are declared can affect which registers the compiler assigns to them:

**Example from func_80076918_858C8:**

\\\c
// This order produces t8, t9, t2, t3 for args
s32 temp_t0;
Unk8014D298 \*temp_v1;
\\\

vs

\\\c
// This order produced t9, t2, t3, t4 for args
Unk8014D298 \*temp_v1;
s32 temp_t0;
\\\

While both are functionally correct, the register allocation can differ by 1 register number. If you're very close to matching but registers are off by one (e.g., using t2 instead of t1), try reordering local variable declarations.

### Global reload after function call

When a global variable is loaded before a function call and used after, the compiler may reload it fresh or keep the cached value depending on the code structure:

**Original pattern (reloads):**

\\\c
temp_t0 = D_8014D2EC;
if (temp_t0 == 8) {
func_800769A8_85958(0);
temp_t0 = D_8014D2EC; // Explicit reload
}
// Use temp_t0...
\\\

Without the explicit reload, the compiler might cache D_8014D2EC's address and reuse it, changing the instruction pattern from \lui/lw\ to \lw (cached_reg)\.

### Struct array access patterns

For arrays of small structs (e.g., 0xA/10 bytes), accessing via pointer vs direct array indexing affects codegen:

**Pointer pattern:**

\\\c
Unk8014D298 \*entry = &D_8014D298[index];
entry->unk0 = value0;
entry->unk8 = value8;
// Keeps base in register v1
\\\

**Direct access pattern:**

\\\c
D_8014D298[index].unk0 = value0;
D_8014D298[index].unk8 = value8;
// May recalculate base each time
\\\

The pointer pattern is generally closer to original code when you see the assembly compute a base address once and reuse it for multiple stores.

### Function pointer return types and forward declarations

When a function returns the address of another function (function pointer), proper declarations are critical:

**Function pointer return syntax:**

```c
void* (*func_80000CD4_18D4(Unk80042DA8** arg0))(void) {
    // ...
    return &func_80000B14_1714;
}
```

This reads as: "a function that takes a pointer-to-pointer and returns a function pointer (that returns void\*)."

**Forward declaration requirement:**

```c
void* func_80000B14_1714(void);  // Must declare before returning its address
```

Without the forward declaration, the compiler will error with "undeclared identifier" even if the function is defined in the same file (as a GLOBAL_ASM pragma).

### Struct padding for alignment

When defining structs based on assembly access patterns, remember to add explicit padding for alignment:

**Without padding (incorrect):**

```c
typedef struct {
    u8 unk0;
    s32 unk4;    // Misaligned!
    void* unk8;
} Unk;
```

**With padding (correct):**

```c
typedef struct {
    u8 unk0;
    u8 pad1[3];  // Explicit padding for alignment
    s32 unk4;
    void* unk8;
} Unk;
```

The assembly will show `lbu` at offset 0x0, `sw` at offset 0x4, and `sw` at offset 0x8. The padding bytes ensure field offsets match the assembly exactly.

### mips_to_c function signature inference

mips_to_c may incorrectly infer function parameters based on register setup in the assembly. If registers like `$a0` and `$a1` are set up before a function call but the actual function definition takes no parameters, the register setup might be for saving/preserving values rather than passing arguments.

Always verify function signatures by checking the actual function definition or examining what the function does with the registers. If a function accesses globals directly rather than using argument registers, it likely takes no parameters.
