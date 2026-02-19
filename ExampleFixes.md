https://github.com/zestydevy/dinosaur-planet/blob/master/docs/Guide.md

https://hackmd.io/vPmcgdaFSlq4R2mfkq4bJg
https://github.com/n64decomp/oot/blob/master/docs/guides/-O2%20decompilation%20(for%20IDO%205.3).md
https://github.com/zeldaret/mm/tree/main/docs/tutorial
https://github.com/zeldaret/oot/blob/9963e7f5d5fa8caee329f6b40e393d8a2c45390b/docs/tutorial/contents.md

If a char/short param is being `& 0xFF`/`& 0xFFFF` in ASM it may not need to be in the c code and doing so will throw off the register alloc. This hints that the arg in question is a u8/u16 ?

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

### mips_to_c struct field generation for simple arrays

When mips_to_c sees stores/loads at sequential offsets (e.g., +0x0, +0x2, +0x4), it may generate struct-like field accesses even when the symbol is actually a simple array:

**mips_to_c output:**

```c
D_80048140.unk0 = 0;
D_80048140.unk2 = 0;
D_80048140.unk4 = -0x8000;
```

**Actual declaration:**

```c
extern s16 D_80048140[];  // Not a struct, just an array
```

**Fix - convert offsets to array indices:**

```c
D_80048140[0] = 0;      // offset 0x0 / sizeof(s16) = index 0
D_80048140[1] = 0;      // offset 0x2 / sizeof(s16) = index 1
D_80048140[2] = -0x8000; // offset 0x4 / sizeof(s16) = index 2
```

The conversion rule: **array_index = byte_offset / sizeof(element_type)**

- For `s16[]` or `u16[]`: divide offset by 2
- For `s32[]` or `u32[]`: divide offset by 4
- For `s64[]` or `u64[]`: divide offset by 8

This pattern is common for lookup tables, configuration arrays, and state buffers that are initialized with specific values at known indices.

### Small integer parameter types and argument save stores

When a function has \andi\ instructions to mask parameters to 0xFF or 0xFFFF, the correct C code should use \u8\/\s8\ or \u16\/\s16\ parameter types instead of \s32\ with manual masking.

### Pass-through parameters and function signatures

When a function passes its incoming arguments directly to another function without modification, the type declaration of the called function matters for code generation:

- If the called function is declared with `s16` parameters but receives values already in 32-bit registers, the compiler may generate `sll`/`sra` sign-extension code
- Declaring the called function with `s32` parameters for pass-through values avoids this extra sign extension
- This typically applies to the first parameters (a0, a1) that are passed through untouched while later parameters are extracted from structs

Example: `func_8012B150_13A100` passes a0 and a1 through while extracting s16 values from a struct for the remaining args. Declaring the callee as `func(s32, s32, s16, s16, s16)` matches, while `func(s16, s16, s16, s16, s16)` generates extra sign-extension for the first two parameters.

### Reverse scan over strided halfword table

If a function compares one `s16` value per entry while stepping backwards by 8 bytes each iteration, model the table as a struct array with an `s16` first field and stride 8.

A form like `while (i--) { if (arg == entries[i].value) return 1; }` can produce the exact `lh` / `move v0, v1` / `addiu ptr, -8` / `bnez v1` loop shape that a raw pointer or byte-offset form may miss.

### Compound bit-flag sequence with two stores (set/clear pattern)

When the original assembly does a load, OR into a register, STORE (intermediate), AND the register, STORE again use |= followed by &= rather than a named temp variable.

IDO 5.3 with a named temp:
`c
s32 temp = ptr->field | 0x80;
ptr->field = temp;           // << IDO eliminates this (dead store)
ptr->field = temp & ~0x100;
`
IDO 5.3 with |= / &=:
`c
ptr->field |= 0x80;          // store 1 emitted
ptr->field &= ~0x100;        // AND uses the register value, no reload; store 2 emitted
`
IDO 5.3 is smart enough to _not_ reload from memory for the &= even though it just stored, so the assembly matches: one load, two stores.

### Trailing call register allocation: prefer no-temp-variable and if (cond) over if (cond != 0)

When a function has a conditional block followed by an unconditional call at the end, using a local struct pointer variable OR writing if (func() != 0) can cause the compiler to choose a2 for the restored arg0, adding an andi a0, a2, 0xff in the jal delay slot instead of
op.

Fix:

- Use direct array subscript D_array[arg0].field instead of a local Type \*ptr
- Write if (func(arg0, x)) instead of if (func(arg0, x) != 0)
- Ensure called functions are properly declared in functions.us.h (implicit declarations can affect register allocation)

### Struct field split: s32 to two s16 fields

When assembly uses lh at offset unk_N but the struct has s32 unkN, the s32 field should be split into two s16 fields:

- s32 unk38 s16 unk38; s16 unk3A;

This allows clean ->unk3A struct access instead of _(s16_)((u8\*)ptr + 0x3A) casts.
