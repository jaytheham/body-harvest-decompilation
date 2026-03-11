### Delay-slot pointer setup

For patterns like:

- compare index against sentinel
- branch delay slot does `addu baseReg, baseReg, index`
- then `lbu` from that pointer
- then increment/store index

use an explicit pointer plus temp byte value in C:

### u8 Callee param → `andi t6` + `move a0,t6` early + shifts

When a `u8 arg0` function passes arg0 to a callee AND also passes `alienInstances` as a 4th argument, the target assembly shows:
- `andi t6, a0, 0xff` (stores masked idx in **t6**, not a3)
- `lui a3, %hi(alienInstances)` immediately after (a3 = alienInstances base for 4th arg)
- `or a0, t6, $zero` BEFORE the first conditional branch (eager arg0 setup)
- `nop` in jal delay slots (not `move a0, a3`)
- `sll/addu/sll` shifts for `* sizeof(struct)` (not multu)

The critical fix: declare the **callee's first parameter as `u8`** (not `s32`). When IDO passes a `u8 arg0` to a `u8` callee parameter AND also sets up $a3 = alienInstances for the 4th arg, it assigns the andi result to `t6` (not `a3`) and hoists `move a0, t6` before the first branch.

```c
// Callee declaration — note u8 first param:
void func_800816B0_90660(u8, void *, s32, AlienInstance *);

// Caller — u8 arg0, 4-param call:
s32 func_8008199C_9094C(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    ...
    func_800816B0_90660(arg0, target, flags, alienInstances); // 4 params
}
```



`u8* ptr = &D_xxx[index];`
`u8 value = *ptr;`
`D_index = index + 1;`
`return value;`

This shape can preserve both branch delay-slot pointer arithmetic and the `lbu` before index increment/store ordering.

### Frame too large: phantom stack slot from named pointer local

If the frame is 8 bytes too large and all register saves are uniformly shifted by 4 bytes (but no extra instruction writes to that phantom slot), a named local pointer variable like `AlienInstance *inst = &alienInstances[arg0]` is causing IDO to allocate a 4-byte stack home. The fix is to eliminate the named pointer and use the array access `alienInstances[arg0].field` directly throughout instead.

Example:
```c
// Wrong: inst gets a phantom stack slot → frame 0x30
AlienInstance *inst = &alienInstances[arg0];
inst->unkC = -1;

// Right: no pointer variable, direct access
alienInstances[arg0].unkC = -1;
```

This also applies to other named pointer locals (not just AlienInstance). For example, a local `Unk8014DD50 *ptr = &D_8014DD50[idx]` used only twice (once to read a field, once to check another field after several jals) will create a phantom slot too. In that case: use `D_8014DD50[idx].field` directly both times — IDO will still spill the computed pointer to the stack naturally across the jal calls, but without the extra phantom slot. This also correctly allocates `$a2` (not `$v1`) for the pointer register.

### `s16 temp_v1` creates phantom slot that shifts inst ptr

When a function uses `s16 temp_v1 = D_xxx->unk2;` before an if-else that assigns to a local s32 variable, IDO allocates a 4-byte "home" slot for `temp_v1` on the stack, even though it is only used in registers (no store to temp_v1 appears in the assembly). This phantom shifts the inst ptr natural spill slot 4 bytes lower than the target.

Fix: inline the D_xxx->unk2 accesses directly into the if-else condition and both branches. IDO will CSE the three occurrences into one `lh` load (kept in a register) and no phantom slot is created. The if-else structure must be preserved (not converted to `if (...) x += c`) to get the two-branch assembly pattern that the target uses.

```c
// Wrong: s16 temp_v1 creates phantom at sp34, shifts inst ptr to sp30
s16 temp_v1 = D_80052B34->unk2;
if (D_80222A70 >= temp_v1) {
    sp3C = temp_v1;
} else {
    sp3C = temp_v1 + 0x32;
}

// Correct: inline, three CSE'd to one lh, no phantom
if (D_80222A70 >= D_80052B34->unk2) {
    sp3C = D_80052B34->unk2;
} else {
    sp3C = D_80052B34->unk2 + 0x32;
}
```



When a function body does `sh unk12` → `multu arg_idx` → `lw unk20` → ... → `sw unk20` → `sh unk10`:
- The early `multu` is driven by the FIRST use of the argument-indexed pointer (e.g. `unk26` load).
- Put the assignment driven by the argument-indexed load (e.g. `v1->unk26 = arr[arg].unk26 + 1`) **before** the `|=` and the independent `unk10` store in the C source.
- This causes IDO to emit multu for arg early and interleave `lw/or/sw` for the `|=` while the multu is in flight.

Example (correct order):
```c
v1->unk12 = 0x380;
v1->unk26 = arr[arg].unk26 + 1;   // triggers early multu
v1->unk20 |= 0x40000000;           // lw/or/sw interleaved while multu runs
v1->unk10 = 0x320;                 // sh deferred
```

Also: to get `multu` instead of `sll/addu/sll` for struct index computation, declare the index variable as `u8` (not `s32`). Using `s32` causes IDO to use the shift expansion. When the callee returns `s32` but the caller stores to `u8`, IDO emits an extra `andi` — fix by changing the callee to return `u8` if appropriate.

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

### Regalloc t-register cyclic shift: move `result = 1` after arg stores

When a block assigns a constant (like `result = 1`) and then stores function arguments to struct fields, and the generated assembly is correct but t-registers are cyclically shifted (e.g. t3/t4/t5 → t4/t5/t3), moving `result = 1` to **after** the argument stores fixes the allocation. IDO pre-loads the memory-backed argument values (hiding load latency) first, giving them the lowest free t-registers, then assigns the constant last. If `result = 1` appears before the arg stores in C, IDO schedules the `li 1` first (low register), causing the cyclic shift.

```c
// Wrong (result = 1 before arg stores → t3=1, t4=arg2, t5=arg1):
alien->unk20 |= 0x40001000;
alien->unk36 = 0;
result = 1;
alien->unk10 = (s16) arg2;
alien->unk2C = (s16) arg1;

// Correct (result = 1 after arg stores → t3=arg2, t4=arg1, t5=1):
alien->unk20 |= 0x40001000;
alien->unk36 = 0;
alien->unk10 = (s16) arg2;
alien->unk2C = (s16) arg1;
result = 1;
```

IDO reorders the `sw result` to appear before the `sh` stores in the output anyway (store-store reordering for non-aliasing addresses), so the final assembly store order matches the target despite the source order change.

### s16 field inside struct array — replace raw pointer math

When asm accesses a field at byte offset `N` within a struct of size `S` using `(&D_xxx)[specIndex * (S/2)]` (s16 array stride), and the struct is already typed (e.g. `AlienSpec` size 0x68), replace with a named field in the struct and use `D_arr[specIndex].fieldN`.

This recovers the exact t-register reuse where the final `sll tX, tX, 3` reuses the same register as the intermediate, avoiding the +1 register shift that manual pointer math causes.

Example: `(&D_802566BE)[specIndex * 0x34]` → add `s16 unk26` to AlienSpec at offset 0x26 → `D_80256698[specIndex].unk26`

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


#### `bgtzl` delay slot with a memory load

When you see `bgtzl v1, TARGET` with `lw tX, offset(reg)` in the delay slot, the assembler hoisted the `lw` from the **first instruction of the taken block** into the delay slot. The actual compiler IR had that load as the first thing in the taken branch body.

To reproduce this pattern: in the C code after the `if` guard (i.e. in the code that runs when the branch is taken), make sure the **memory load** operation (e.g., load of a flag field) appears **textually before** any register-only computation (e.g., a decrement using an already-loaded local variable).

Example: if the function decrements `unk10` and clears bits in `unk20`, write:
```c
inst->unk20 &= ~MASK;          // load unk20 first → assembler hoists lw into bgtzl delay slot
*(s32*)&inst->unk10 = unk10 - 1; // unk10 already in register, computed after
```
NOT:
```c
*(s32*)&inst->unk10 = unk10 - 1; // addiu goes into bgtz delay slot instead
inst->unk20 &= ~MASK;
```

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

### Constant encoding for -1 vs 255

When storing -1 to a `u8` array element, the compiler may optimize the constant to 255 (0x00FF) instead of -1 (0xFFFF), causing a mismatch in the immediate encoding.

To force the exact encoding `addiu reg, zero, -1` (0xFFFF), use a temporary `s8` variable:

```c
s8 neg_one = -1;
byteArray[index] = neg_one;
```

This prevents the compiler from optimizing the constant and ensures the correct instruction encoding.

### Do not use local pointer variables for struct array entries used across a jal

When a struct array entry pointer is computed and then used both as a `jal` argument and for field accesses after the call, the compiler naturally creates a uopt temp to save/restore the pointer across the call (e.g. `sw v0, 0x1c(sp)` before `jal`, `lw v0, 0x1c(sp)` after). If you declare a named local pointer variable instead, it becomes a user-declared stack slot and lands at a _different_ offset, causing a stack size mismatch.

**Wrong** (user variable shifts the stack slot):

```c
Foo *sp1C = &D_Array[(s32)arg0];
func_call(arg1, arg2, &sp1C->unk6);
arg2[0] += sp1C->unk0;
```

**Correct** (inline access lets the compiler place the uopt temp at the right offset):

```c
func_call(arg1, arg2, &D_Array[(s32)arg0].unk6);
arg2[0] += D_Array[(s32)arg0].unk0;
```

### `while (i--)` for `bnez` + delay-slot decrement loops

If the target loop tail is `bnez reg, loop` with `addiu reg, reg, -1` in the delay slot, prefer `while (i--)` over `if` + `do/while` or manual `if/break` structures.

In one buildings.c case, this rewrite produced both:

- the exact tail pattern (`bnez s0` + delay-slot decrement), and
- the expected early `move v0, s0` before the zero check.

### `s32` index variable forces shift chain vs `multu` for array access

When accessing `D_80048198[idx]` (stride 0x50 = 80 bytes), IDO 5.3 chooses between:

- **Shift chain** (`sll x, 2; addu x, x; sll x, 4`) — when a named `s32` variable is used as index
- **`multu` with constant** (`li reg, 0x50; multu idx, reg`) — when the index comes from an inline expression or from a `u8` variable, or when the same index is used more than once in separate array accesses

To get shift chain for a `D_80048198` lookup where the index is loaded from a struct pointer:

```c
s32 idx = ((u8 *) arg0)[8];   // explicit s32 named variable
D_80048198[D_80048198[idx].unk25].unk20 &= 0xFFFEFFFF;
D_80048198[idx].unk20 &= 0xDFBFFFFF;
```

Using `u8 idx` or an inline cast `(s32)((u8*)arg0)[8]` both generate `multu`. Only a named `s32` variable gives the shift chain.

Note: Even with `s32 idx`, if `D_80048198 + idx` appears in **two separate pointer assignments** (two named `Unk80048198 *` pointers), IDO may still use `multu`. The pure array-subscript form `D_80048198[idx]` with a single `s32 idx` variable is the most reliable way to get shift chains.

### Matrix-vector multiply: left-to-right add without parentheses for correct mul scheduling

For 3-element multiply-add expressions like `out = a*b + c*d + e*f`, write ALL terms with consistent operand order (e.g., `vec[i]*mat[j]`) and without explicit parentheses. Adding parentheses like `e*f + (a*b + c*d)` changes the final add's operand order in the generated `add.s` instruction.

### Constant register placement in multi-store functions

When filling a struct with both argument values and a constant (e.g., `D_840[i].unk2 = 0xF`), the C position of the constant store determines the register it gets. The compiler's register allocator processes the "variables" (including constants requiring a register) in C statement order. Place the constant between the groups where the target shows it was allocated (often between s16 and u8 arg groups).

### u8\* pointer for offset byte access to differently-typed struct fields

When assembly uses `sb` to write single bytes at struct offsets that are declared as wider types (e.g., writing a byte at offset 0x12 of an s16 field), use `*(u8 *)&struct.field = val` to generate `sb` instead of `sh`.

### u8 parameter type causes home-area spill in leaf functions

When a function parameter is `u8` (not `s32`), IDO will emit `sw $a0, 0($sp)` in leaf functions and `sw $a0, N($sp)` in non-leaf functions even with no other stack use. This is a reliable indicator that the original parameter type was `u8` rather than `s32`. If the assembly has `andi $t6, $a0, 0xFF` to mask the argument, the parameter type is likely `u8` (the andi handles zero-extension), not `s32` with explicit `& 0xFF` in C.

### Sign-bit check: `& 0x80000000` vs `< 0`

When assembly uses `sll $t9, $reg, 0x0` (no-op shift) followed by `bgez $t9`, this is generated by `if (x & 0x80000000)`. Using `if (x < 0)` instead generates `bgez` WITHOUT the `sll` instruction (4 bytes shorter). Use `& 0x80000000` when the assembly contains that no-op sll.

### Direct struct access vs explicit local variable for register allocation

When accessing the same struct field multiple times (e.g., `alienInstances[arg0].unk20`):

- With explicit `s32 temp = ...`: named variable gets a lower-numbered register, struct pointer gets higher → causes register swap vs target
- With direct struct access (no local var): struct pointer gets the first temp register ($v0), loaded value gets the second ($v1) → matches IDO uopt allocation order
  When target shows `addu v0, ...; lw v1, N(v0)` (struct ptr in v0, value in v1), use direct access. When it shows the opposite, use an explicit local var.

### Word-sized stores to adjacent sub-word fields: use `*(s32 *)` cast

When assembly emits `sw $zero, N($v0)` to zero-clear two adjacent `s16` fields (or 4 padding bytes), IDO does NOT merge two adjacent `sh $zero` into a `sw`. To produce `sw`, use an explicit word cast:
`c
*(s32 *)&inst->fieldAtOffsetN = 0;
`
Confirm the field address is 4-byte aligned. Works for any paired s16 or byte fields at a word-aligned offset.

### s16 local pair passed as pointer: use array not two separate vars

When assembly stores two adjacent `s16` locals and passes a pointer to the first:
`asm
sh t7, 0x24(sp)   # arr[0] = arg1
sh t8, 0x26(sp)   # arr[1] = arg2 (delay slot)
addiu a3, sp, 0x24
jal callee
`
Use `s16 arr[2]` in C instead of two separate variables. With two named s16 vars, IDO may allocate them in wrong stack order or optimize away the second (written-but-not-read).

### Register allocation: control which struct field gets loaded first in a branch

When inside a branch body two struct fields must be loaded (e.g., `inst->unkXX` and `inst->unkYY` for an array index + bit-shift computation):

- IDO evaluates expressions left-to-right; the **first evaluated sub-expression** in a statement gets the lowest free register (e.g., `a0` if the arg register was freed by prior use).
- If target shows `lbu a0, offsetA(v0)` BEFORE `lbu tN, offsetB(v0)`, field A must appear as the FIRST sub-expression evaluated.
- Key trick: if you need field A first but also want a named local, **assign the named local to field A**, then reference field B inline.
  - Example: target loads `unk39` into `a0` first, then `unk27` into `t2`, for `alienInstances[unk39].unk27 &= ~(1 << unk27)`.
  - Wrong: `shift = inst->unk27; alienInstances[inst->unk39].unk27 &= ~(1 << shift);` (unk27 loaded first)
  - Correct: `shift = inst->unk39; alienInstances[shift].unk27 &= (u8)~(1 << inst->unk27);` (unk39 loaded first)
- A declared variable that is **never used** is optimized away by IDO; it does NOT consume a register slot.
- For array/stride prologue: adding a `u8` local that is actively used inside the branch takes the `a1` slot, pushing compiler-generated base/stride temps to `a2`/`a3`.

### Compiler spill slot placement (frame layout)

When a register needs to be preserved across a `jal` call, IDO places it into a stack spill slot. The spill slot address depends on whether an explicit C local variable is declared:

- **With a declared local `AlienInstance *inst`**: IDO assigns it frame-8 (e.g., sp+0x18), leaving frame-4 for ra.
- **Without a declared local (direct field access like `alienInstances[arg0].field`)**: IDO creates a compiler-generated spill and places it at frame-4 (e.g., sp+0x1C), with ra at a lower slot (frame-12 = sp+0x14).

If the target has a spill at `sp+0x1C` (frame-4) with ra at `sp+0x14` (frame-12) and a gap at `sp+0x18`, try removing the intermediate pointer variable and accessing the array/fields directly each time. This shifts the spill-slot from frame-8 to frame-4.

Example that produces the target layout:

```c
void func(u8 arg0) {
    if (!(alienInstances[arg0].unk20 & 0x40000000)) {    // direct access, no local
        alienInstances[arg0].unk12 = 0xE0;
        func_A(arg0, &alienInstances[arg0].unkE);
    }
    if (alienInstances[arg0].unk47 & 8) {
        func_B(&alienInstances[arg0]);
    }
}
```

**cfe temps always go at the end (highest address) of the local area**: If a pointer is preserved across function calls via a stack slot (the `sw v0, offset(sp)` in the delay slot pattern), check whether it should be a *cfe-generated temporary* (no explicit declaration) or a *declared local variable*. Non-declared cfe temps are placed at the END (highest address) of the local variable area. Declared locals are placed in declaration order from lower to higher addresses. If the target has a gap between `ra` and the pointer slot (e.g., ra at sp+0x14, unused 4 bytes at sp+0x18, pointer at sp+0x1c), the pointer is a cfe temp — simply use `alienInstances[arg0].field` directly inline without declaring an `ai` variable. IDO will cache the pointer in a cfe temp at the end of the stack.

**When target has TWO consecutive pointer slots at end of frame (e.g., sp+0x18 and sp+0x1C), with NO gap from ra:** Both are cfe temps (no declarations needed for either). The first function call's pointer gets the LOWER slot and the second's gets the HIGHER slot. When there's also an intermediate index value (e.g., `unk25 = alien->unk25`) used to compute the second pointer, avoid declaring a local for that index — instead assign the second pointer directly: `AlienInstance *alien = &alienInstances[alienInstances[arg0].unk25]`. If you DO declare a local for the index (e.g., `s32 unk25`), it claims a v-register, pushes the second pointer into an a-register (wrong), and causes the frame to grow by 8 bytes due to 4-byte alignment rounding. The right pattern is: declare ONLY the second pointer (`AlienInstance *alien`), access the first pointer inline (`alienInstances[arg0]`), and let IDO generate both cfe temps from the expressions.

Stack variables are placed in "as declared" order - non-declared temporary variables are placed at end of stack.

**Displacing a cfe temp from 0x1c to 0x18 with a dummy variable (declare dummy FIRST):** When a single register needs to be saved across a JAL call (e.g., sp18 in a 0x20 frame) and it spills to offset 0x1c (but the target uses 0x18), declare an UNUSED dummy variable BEFORE the real variable. The dummy being first in declaration order takes the higher slot (0x1c), forcing IDO to allocate the cfe temp at the lower slot (0x18). The real variable comes SECOND (last in declaration order, can be register-allocated → its slot is removed by the not-last rule), while the dummy (first, not-last) keeps its slot at the higher address, blocking the cfe from using 0x1c. Pattern:
```c
s32 sp1c;   // dummy — first declared, not-last → keeps slot at 0x1c (blocks cfe from using 0x1c)
s32 sp18;   // real — second declared, last, register-allocated → slot removed; cfe falls to 0x18
```

### Float register allocation from expression order

When two float variables `temp_f0` and `temp_f2` have their register allocation swapped (i.e., your output has `cvt.s.w $f0,...` but target has `cvt.s.w $f2,...`), IDO assigns the first _computed_ expression to `$f2` and the result of the next to `$f0` when the first expression involves a division (or multi-step float op). The fix is to **compute the dependent expression first** even if the other variable is declared first:

```c
// WRONG register order (first cast gets $f0):
f32 temp_f2 = (f32)*arg0;
f32 temp_f0 = temp_f2 / (f32)arg2;

// CORRECT register order (first cast gets $f2):
f32 temp_f0 = (f32)*arg0 / (f32)arg2;   // IDO puts (f32)*arg0 in $f2 as a subexpr
f32 temp_f2 = (f32)*arg0;               // IDO reuses /CSE the $f2 value
```

### Read-modify-write (`*ptr &= mask; *ptr |= val;`) forces dead-store intermediate

When assembly shows two sequential `sb` stores to the same pointer — e.g.:

```asm
lbu  t2, 0(v1)
andi t4, t2, 0xF0   ; mask
sb   t4, 0(v1)      ; DEAD store (immediately overwritten)
or   t5, t4, a2
sb   t5, 0(v1)      ; final store
```

the pattern preserving both stores is the two-step read-modify-write idiom on a u8 pointer:

```c
u8 *ptr = &D_array[(arg1 << 4) + arg0 / 2];
*ptr &= 0xF0;
*ptr |= arg2;
```

If you instead write `*ptr = (*ptr & 0xF0) | arg2;` (single expression) or `masked = *ptr & 0xF0; *ptr = masked | arg2;` (explicit temp), IDO's dead-store elimination removes the intermediate store and only emits ONE `sb`. Use `*ptr &= ...; *ptr |= ...;` to force both stores.

### Empty single-arg function `jr $ra; sw $a0, 0($sp)`

IDO -O2 with a single argument and empty body produces:
`asm
jr $ra
sw $a0, 0x0($sp)   ; delay slot: arg save (ABI compliance)
`
C decompilation: `void func(s32 arg0) {}`

### Simple global getter/setter with delay slot

IDO often places the memory access in the delay slot of `jr ``:
`
jr $ra
sw $a0, %lo(GLOBAL_VAR)($at) ; setter delay slot
`or`
lui $v0, %hi(GLOBAL_VAR)
jr $ra
lw $v0, %lo(GLOBAL_VAR)($v0) ; getter delay slot
`C decompilation for setter:`void func(s32 arg0) { D_ADDR = arg0; }`C decompilation for getter:`s32 func(void) { return D_ADDR; }`

### s16 arg with sw a0, 0(sp) delay slot issue

When a function takes `s16 arg0` and stores result via `sh`, IDO 5.3 generates a `sw a0, 0(sp)` (saves original 32-bit arg to the caller's argument home area). The correct C form is:

```c
void func(s16 arg0) { D_s16_GLOBAL = CONST - arg0; }
```

However IDO's scheduler may put `sh` vs `sw a0, 0(sp)` in the delay slot in either order depending on context. If the delay slot ordering doesn't match after trying once, accept NON_MATCHING. The correct function signature is `s16 arg0` (not `s32`) -- using `lh` at call sites and `sh` for the result confirms this.

### Float bit-copy (lw/sw instead of lwc1/swc1)

When the assembly copies float field bits with integer `lw`/`sw` rather than float `lwc1`/`swc1`, use explicit pointer casts:

```c
*(s32*)&dest->unkXX = *(s32*)&src->unkXX;
```

Statement order matters for scheduling. To get the `sw` delayed and fill a `mtc1` delay slot, put the next float computation _between_ the two copies:

```c
*(s32*)&arg0->unk24 = *(s32*)&arg0->unk30;  // copy 1
arg0->unk38 = (f32) temp->unk4;              // compute next before copy 2
*(s32*)&arg0->unk28 = *(s32*)&arg0->unk34;  // copy 2 fills mtc1 delay slot
```

### Float field struct types

Fields loaded with `lwc1` are `f32`, not `s32`. Defining a float-loaded field as `s32` produces mismatched register types. Check assembly load opcodes when defining struct members.

### Post-increment in condition moves global address to a0

When a global counter is loaded, incremented, stored, and compared, using `D_global++ >= threshold` instead of a local temp (`s16 temp = D_global; D_global = temp+1; if (temp >= threshold)`) causes IDO to put the global address in `a0` (not `v1`) and the loaded value in `v1` (not `v0`). It also triggers pre-loading of the next global address into `at` before the branch — matching the original scheduling pattern. Use this form when the original shows: `lui a0; lh v1, 0(a0); lui at, D_other; slti v0, v1, threshold`.

### u8 vs s8 parameter shifts temp register numbers

When an argument parameter type is `s8`, temp registers t7/t8/t9 end up one slot higher (t8/t9/t0) compared to `u8`. The `sw $a0, 0($sp)` hint for (u)8 parameters is the same for both; the difference is in the subsequent address/compute register assignments. If D_global address computation ends up in t9 (orig: t8), try changing the parameter from `s8` to `u8`.

### Comparison operand order affects register assignment for D_global

When a condition like `(D_global & mask) == (arg & mask)` produces register mismatches where D_global is in t8 (orig: t7) and arg is in t7 (orig: t9), reversing the operands to `(arg & mask) == (D_global & mask)` fixes it. IDO uses the rs (first operand) register of `bne` for the most recently computed value. By placing D_global on the right, it is computed last and assigned to rs, matching the expected register order.

### bnel backward loop with or v0, v1, zero pattern

When a backwards array walk uses `or v0, v1, zero` at the start of each loop iteration (copying counter v1 to return register v0), the original C code has no explicit `ctr` variable — IDO spontaneously copies the counter to the return register v0 as an optimization to return NULL naturally when the counter reaches 0. To reproduce: declare only two local vars (counter, pointer) in order counter→v1, pointer→a0. If v0/v1 are taken by locals, v0 will NOT be the implicit return copy and bne will be used instead of bnel. After 5 attempts if the register layout still differs, wrap as NON_MATCHING.

### Inlining struct access avoids pointer-comparison substitution

When `temp_v0 = some_struct->field` is declared as a local variable, IDO may optimise `temp_v0 < N` into a pointer comparison: `&D_array[temp_v0] < &D_array[N]`, producing `lui+addiu+sltu` instead of `slti`. This also forces the "eager" `lui+addiu` base-address pattern for D_array, prevents deferred `lw lo(D)(hi+stride)`, and displaces the `mtc1 a3, f12` scheduling to after the array load.

Fix: inline `some_struct->field` directly in every use (no local variable). IDO then keeps only the `%hi` part of the base register, uses `lw %lo(D)(hi+stride)` deferred load, fills the `lui` delay slot with `mtc1 a3, f12`, and uses a plain `slti` for the bound check — exactly matching the original code.

### f32 in position 4 (a3 slot) stays in a3 with IDO O32

For a prototyped function with signature `(ptr, s32, s32, f32)`, the f32 fourth argument arrives in integer register `$a3` (not in `$f12`). The function prologue emits `mtc1 $a3, $f12` to move it to a float register. This is standard IDO -O2 -mips2 -32 behaviour: only the first two float arguments (positions 1 and 2) use the float registers `$f12`/`$f14`; later positions use the corresponding integer registers (`$a2`, `$a3`).

### UP-counting outer loop: register save order (s1 before ra)

When a nested loop function counts UP (var_s1 = 0; ... var_s1++) and the outer counter uses s1, IDO may save ra before s1 in the prologue - wrong save order.

Root cause: IDO saves registers as first used. If var_s1 = 0 is inside the if body, IDO only encounters s1 after the branch, so ra (first clobbered by jal calls inside the loop) is saved first.

Fix: Move var_s1 = 0 BEFORE the if-check and change the condition to if (var_s1 < D_bound) instead of if (D_bound > 0):

    // WRONG (ra saved before s1):
    if (D_800E6460 > 0) {
        var_s1 = 0;
        do { ... } while (var_s1 < D_800E6460);
    }

    // CORRECT (s1 saved first):
    var_s1 = 0;
    if (var_s1 < D_800E6460) {
        do { ... } while (var_s1 < D_800E6460);
    }

IDO -O2 optimises the if (0 < D_bound) check to blez v0, end (same instruction), while the earlier var_s1 = 0 assignment makes s1 the first live saved register, fixing the prologue save order.

### while loop initial value offset

If a while loop begins by adding or subtracting from its counter var, the initial value set in code may be one off from the asm value:
`li      v1,0x29`
becomes:
```c
	i = 0x2A;
	while (i--) {
```

### uopt temp for pointer spill vs explicit user-declared pointer variable

When a pointer (e.g. boss pointer `v0`) is spilled to the stack in a JAL delay slot and reloaded immediately after, the spill location depends on whether it is a user-declared variable or a uopt temp:

1. A **user-declared** local pointer variable (e.g. `AlienInstance *sp1C`) is placed at the lowest available slot after `ra` (e.g. 0x18 if nothing else is declared first).
2. A **uopt temp** is placed at the bottom of the user area (e.g. 0x1C with 0x18 empty).

If the target has a pointer spilled at 0x1C with slot 0x18 empty (frame=0x28), the correct approach is to:
- Do NOT declare an explicit local pointer for the boss/target struct.
- Instead, access the struct inline using `(&alienInstances[idx])->field` notation.
- Declare any index variable (e.g. `u8 unk25`) as the ONLY user-declared variable - this reserves the 0x18 slot (keeping frame at 0x28) because it is NOT last in declaration order relative to the uopt temp region.
- The uopt temp for the boss pointer then lands at 0x1C (correct).

Example: The pattern `AlienInstance *sp1C; ... sp1C = &alienInstances[unk25];` puts sp1C at 0x18 (wrong). Using `(&alienInstances[unk25])->field` inline lets the uopt temp land at 0x1C (correct).

### Deferred spill: `sll/sra` sign-extend vs `sh` for address-taken s16

When a `s16` local has its address taken (passed to a function in one branch) but is *assigned* via `(s16)(...)` in the other branch, IDO's deferred-spill optimization determines whether you get `sll/sra` (register keep) or `sh` (stack write):

- **With a named `AlienInstance *inst` pointer**: The phantom 4-byte stack home shifts sp24's slot, and IDO writes sp24 to the stack in the if-branch (`sh + no sign-extend`).
- **Without the named pointer** (direct `alienInstances[arg0].field` access): The phantom home is gone, sp24 lands at the correct slot (e.g. sp+0x24), and IDO uses the deferred-spill optimization — in the branch that doesn't take the address, it keeps sp24 in register (a0 after jal) and generates `sll/sra` sign-extend. No `sh` is emitted.

Pattern (func_80080510_8F4C0):
```c
u8 type = alienInstances[arg0].specIndex;
s16 sp24;
if ((alienInstances[arg0].unk20 & 0x02000000) || D_80052ACA == 2) {
    sp24 = (s16)(func_A(...) >> 8);  // stays in register a0, no sh
} else {
    func_B(..., &sp24);               // writes to sp+0x24
}
```

This also correctly places `sp24` in `a0` (re-using the dead first-argument register post-jal) rather than a pre-allocated register like `v1`.

### Increment temporary registers via chained assignments

When target is using `t8` for example and current is using `t6`, performing chained variable assignments can "use up" the lower temporary registers so the higher one will be used:
```c
    D_8028AA84 = 0;
    D_8028AA8C = 0;
    D_8028AA80 = 0;
```
changed to ```D_8028AA80 = D_8028AA8C = D_8028AA84 = 0;``` results in the later use of t8 instead of t6.

### Final return 0/1 branch direction: if (var_v1 != -1) vs if (var_v1 == -1)

When a function returns 0 or 1 based on whether a "scan result" variable equals -1,
IDO uses **branch-over** style: it generates a branch for the FALSE condition to skip
the if-body. So the C condition direction determines the generated branch instruction:

| C code | Generated branch | Notes |
|--------|-----------------|-------|
| `if (var_v1 != -1) { return 1; } return 0;` | `beq v1, at` | Branch when NOT (!=) = branch when equal |
| `if (var_v1 == -1) { return 0; } return 1;` | `bne v1, at` | Branch when NOT (==) = branch when not-equal |

Target assembly pattern `beq v1, at, ep; move v0, zero; b ep; li v0, 1` maps to:
`c
if (var_v1 != -1) {
    return 1;
}
return 0;
`

The `move v0, zero` in the beq delay slot covers the taken path (var_v1 == -1 → return 0).
The `li v0, 1` in the b delay slot covers the not-taken path (var_v1 != -1 → return 1).
