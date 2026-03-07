# -O2 decompilation

### Preliminaries

- make sure all functions you call are declared
- O2 will assign registers automatically. Any variable defined as `register` will become a "normal" variable (eg, `register s32 a;` becomes `s32 a;`)

### Parameter types

- If the assembly at function entry shows a plain `move reg, arg` (or `or reg, a0, zero`) without sign-extension (`sll/sra` pair), declare the parameter as `s32` not `s16`, even if the values are conceptually 16-bit. Using `s16` parameters causes IDO to emit a sign-extension sequence at the prologue.

### Array base address and immediate offsets

- When a u8 (or other) array is declared at address X+N (e.g. `D_80259D92` starts 2 bytes into `D_80259D90`), accessing `D_80259D92[i][0]` generates a different base pointer in the compiled output vs `D_80259D90[i][2]`, even though both access the same memory. The immediate offset in `sb/lb` instructions will differ by N. Match the original assembly's immediate (e.g. `-0x4E` vs `-0x50`) to pick the right base variable and field index.
- **`li reg, -1` vs `li reg, 0xff`**: To get `addiu reg, zero, -1` (signed -1 load) for a byte store, use a `s8 neg_one = -1;` variable and assign from it. Directly assigning `-1` or `(u8)-1` to a `u8` array element generates `li reg, 0xff` (unsigned 0xFF load) instead.

### Regalloc differences

- move statements around
- remove or introduce temporary variables for subexpressions, and move their assignments around
- in particular, try moving statements between different basic blocks
- duplicate expressions and use the compiler's deduplication machinery
- reuse variables
- fiddle with int promotion if relevant
- try removing any casts and "un-natural" logic.
- **`multu` from reused loop-bound constant**: When a nested for-loop uses a constant bound (e.g., `for (row=0; row<3; row++) for (col=0; col<3; col++)`) AND the body computes `row * 3`, IDO at -O2 will load 3 into a3 once for the outer loop bound and **reuse** that a3 for a `multu v1, a3` in the body — even though 3 is a compile-time constant. This only happens with nested for-loop structure (not goto/do-while). With a goto-based single-loop, IDO generates different register allocation: `andi t6, a0, 0xff; move a0, t6` instead of `andi a2, a0, 0xff`, swapping the `alien_idx` and `col` registers. Use nested for-loops with literal bounds when the target has `multu v1, a3` AND `andi a2, a0, 0xff` at function top.
- **`multu` vs `sll/addu/sll` for struct array index**: When a struct array has size `N = p*2^q` (e.g. `AlienInstance` = 0x50 = 5*16), IDO may generate `li reg, N; multu idx, reg` (caching the constant in a register) instead of the inline `sll/addu/sll` shift sequence. This happens when the SAME stride constant appears in multiple array index computations in the function AND the index variable is a sub-integer type (`u8`, `s8`, etc.). To force the shift pattern, declare the index variable as `s32` instead of `u8`/`u16`. Example: `s32 unk25 = inst->unk25;` then `alienInstances[unk25]` generates shifts, while `u8 unk25 = inst->unk25;` generates `multu`.
- **do-while loop end-pointer register ordering**: When a do-while loop iterates over a 2-byte struct array (e.g. `Unk8013CA *p = &D_8013CA00; do { ... p++; } while (p != &D_8013CA0A)`) with `u8` result and `alienInstances[result]` access, IDO tends to assign the array base pointer (`alienInstances`) to the LOWER callee-saved register (s3) and the loop end pointer (`&D_8013CA0A`) to a HIGHER register (s6), even though the "pointer < integer" rule would normally put both pointer variables below integer constants. This produces a "wrong" register assignment (s3=alienInstances, s4=0x50, s5=0x2F, s6=D_8013CA0A) vs the expected target (s3=D_8013CA0A, s4=alienInstances, s5=0x50, s6=0x2F). Adding an explicit `end` pointer local, changing loop structure (while/for), using goto, or swapping declarations does NOT fix this. The permuter may be needed to resolve such stubborn end-pointer register priority issues.
- revert compiler-generated patterns, like turning `(x ^ A) < 1` back into `x == A`, or recognizing bit field access
- initialize variables within loop headers
- `-var` uses the same destination reg vs `-1*var` which uses a separate distination reg in O2.
- change void function calls to a relevant type, i.e. f32, u32.
- **Struct pointer in argument register (a2/a3) instead of v0**: This happens when the result variables (v0/v1) are claimed first by initialized declarations. Pattern: if target uses `lw a2,0(s0); lh v0,0(a2); lh v1,4(a2)`, declare the working variables with initializers from the struct fields directly (e.g. `s32 var_v0 = struct->field0; s32 var_v1 = struct->field1;`) and modify them in-place with `+=`/`-=`. Do NOT use separate temp variables - they bloat the stack frame and cause different register allocation.
- **GFX macros vs raw word writes**: Use proper GFX macros (`gSPPerspNormalize`, `gSPMatrix`, etc.) via `D_8005BB2C++` instead of raw `{ Gfx *gfx = D_8005BB2C; D_8005BB2C = gfx+1; gfx->words.w0 = ...; gfx->words.w1 = ...; }` blocks. The raw blocks introduce extra local variables that cause register allocation differences. Use `tools/gfxdis.ps1 -w <w0> <w1>` to decode raw words into macros.
- **Integer vs pointer s-reg ordering**: When a function has multiple variables needing saved registers including both integers and pointers, IDO tends to assign lower s-registers to pointer variables and higher ones to integers. If you see `s0=entry_ptr, s2=int_index` in the target but code naturally gives `s0=int_index, s1=entry_ptr`, you may have the correct logic but wrong register allocation. Declaring pointer variables before integer variables does NOT reliably fix this. Adding explicit pointer locals for global addresses (e.g. `s32 *ctr = &D_global`) can dramatically break register allocation (triggering rematerialization).
- **No sign extension = s32 param**: If assembly has `move s2, a0` (no `sll t,a0,N; sra reg,t,N` sign-extend), use `s32` for the parameter (not `s8`/`s16`). Using a narrow type triggers sign-extension even when all callers pass sign-extended values.
- **v1=ptr, v0=lbu result vs v0=ptr, t8=lbu result**: When target uses `addu v1,t6,t7` (struct ptr in v1) then `lbu v0,0x1a(v1)` (value in v0), but your code generates ptr in v0, declare the value variable FIRST with an initializer: `u8 state = alienInstances[arg0].specIndex; AlienInstance *ai = &alienInstances[arg0];`. This forces IDO to load the lbu result into v0 first, pushing the pointer to v1.
- **a3 temp + extra `move a2,a3` from over-specified args**: If m2c says a function takes `(u8, s32, s32)` but the caller passes the SAME variable twice as arg2 and arg3, check whether the callee's first instruction overwrites a2 (e.g. `andi a2, a0, 0xFF`). If so, the callee truly only has 2 real parameters. Declaring it with 3 args causes IDO to allocate the repeated value in `a3` and insert `move a2, a3` before the call (1 extra instruction + different delay slot). Fix: declare the function as `(u8, s32)` only and pass the value once. IDO will then allocate the variable to `a2` and generate the correct `or a1, a2, zero; jal ...; sw a2, offset(sp)` pattern.

### Reorderings

- move statements around
- use `if(1)`'s to put statements in different basic blocks
- introduce temporary variables for subexpressions, and move their assignments around
- separate statements via `,` instead of `;`, or put them on the same line
- change the control flow, e.g. `?:` vs `if`/`else`, or early returns vs normal control flow
- copy a whole struct rather than copying member individually

### Extra `mov`'s

- move variable assignments around
- `if (condition)` causes different behavior than `if (condition != 0)`. Same with `if (!condition)` vs `if (condition == 0)`. See "int promotion" below.
- **`s32` function with no explicit `return` causes `move v0, reg` only in delay slots**: When a function returns `s32` and the compiler fills branch delay slots with `move v0, s1` (keeping v0 pre-loaded with the return value throughout), do NOT add an explicit `return i` at the end. An explicit `return i` forces an extra `move v0, s1` before `jr ra` AND swaps the register restore order for s0/s1 in the epilogue. Declare the function as `s32` but let it fall off the end without an explicit return — IDO will leave v0 set from the last delay-slot fill and no extra epilogue instruction is needed. Pattern: `do { ... alien--; } while (i--);` (no `return i`).

## Compiler behavior

### Stack

#### Local variable placement

The optimizer can move some variables into registers, leaving stack slots empty. If an explicitly declared stack variable is unused or placed in a register, and it is last in the declaration order, it won't affect `sp`. (Thus, a strategy for getting correct stack usage is to first move all stack-placed variables to their correct place on the stack, then either pad with unused variables at the top of the stack to increase stack size, or move registers variables from the start to the end of the declaration order to decrease it.)

**cfe temps always go at the end (highest address) of the local area**: If a pointer is preserved across function calls via a stack slot (the `sw v0, offset(sp)` in the delay slot pattern), check whether it should be a *cfe-generated temporary* (no explicit declaration) or a *declared local variable*. Non-declared cfe temps are placed at the END (highest address) of the local variable area. Declared locals are placed in declaration order from lower to higher addresses. If the target has a gap between `ra` and the pointer slot (e.g., ra at sp+0x14, unused 4 bytes at sp+0x18, pointer at sp+0x1c), the pointer is a cfe temp — simply use `alienInstances[arg0].field` directly inline without declaring an `ai` variable. IDO will cache the pointer in a cfe temp at the end of the stack.

**When target has TWO consecutive pointer slots at end of frame (e.g., sp+0x18 and sp+0x1C), with NO gap from ra:** Both are cfe temps (no declarations needed for either). The first function call's pointer gets the LOWER slot and the second's gets the HIGHER slot. When there's also an intermediate index value (e.g., `unk25 = alien->unk25`) used to compute the second pointer, avoid declaring a local for that index — instead assign the second pointer directly: `AlienInstance *alien = &alienInstances[alienInstances[arg0].unk25]`. If you DO declare a local for the index (e.g., `s32 unk25`), it claims a v-register, pushes the second pointer into an a-register (wrong), and causes the frame to grow by 8 bytes due to 4-byte alignment rounding. The right pattern is: declare ONLY the second pointer (`AlienInstance *alien`), access the first pointer inline (`alienInstances[arg0]`), and let IDO generate both cfe temps from the expressions.

Stack variables are placed in "as declared" order - non-declared temporary variables are placed at end of stack.

**Displacing a cfe temp from 0x1c to 0x18 with a dummy variable (declare dummy FIRST):** When a single register needs to be saved across a JAL call (e.g., sp18 in a 0x20 frame) and it spills to offset 0x1c (but the target uses 0x18), declare an UNUSED dummy variable BEFORE the real variable. The dummy being first in declaration order takes the higher slot (0x1c), forcing IDO to allocate the cfe temp at the lower slot (0x18). The real variable comes SECOND (last in declaration order, can be register-allocated → its slot is removed by the not-last rule), while the dummy (first, not-last) keeps its slot at the higher address, blocking the cfe from using 0x1c. Pattern:
```c
s32 sp1c;   // dummy — first declared, not-last → keeps slot at 0x1c (blocks cfe from using 0x1c)
s32 sp18;   // real — second declared, last, register-allocated → slot removed; cfe falls to 0x18
```

**Padding with unused variables (not-last rule):** If a stack frame is too small (e.g., sp3C ends up at 0x34 instead of 0x3c), declare extra unused `s32` variables BETWEEN the first variable and the next real one. Because they are NOT last in declaration order, IDO still reserves their stack slots even if they're never used. Two unused `s32` variables between `sp3C` and `sp24` add 8 bytes (moving both into the correct positions). Verified with IDO 5.3 O2.

```c=
s32 var1; //0 or -56
s32 var2; //4 or -52
s32 var3; //8 or -48
...
s32 var12; //48 or -8
s32 var13; //52 or -4

if(x < (1*(1/255)*6)) //consumes a temp sp 56 or 0 (function scope)
```

#### cfe temps:

Certain expressions cause cfe to create temporary variables (non-exhaustive):

1. `((void)0, expr)`
   Creates a temp for `expr`, and rearranges loads and stores
2. `expr ? a : b;`
   Creates a temp that stores either `a` or `b`.
   Multiple ternaries in the same expression will allocate more temps.
3. `x--` or `x++` in a branch, `if (expresion with x-- or x++)`
   Creates a temp for the whole expression using the old value of `x`.
   ex:`if (x-- != 0)` becomes
   `temp = x != 0; x--; if (temp != 0)`
   This generates different code than `if (x--)` due to the repeated `!= 0`.
4. `switch (expr)`, with less than 5 cases
5. Chained assignments, especially indirect stores.
   `thing->a = thing->b = expr;`
6. Function return values passed as arguments.
   `function(sin(x));`
   creates a temp for `$f0/$v0`
   These are usually eliminated by code motion, but the slot still remains.

cfe temps can only store expressions of the same type. Temps are allocated at the bottom of the stack as needed, in the order that they appear in the function.

Example:

```c
void temps(int x, struct Test *this) {
    s32 a, b;
    // temp 1 created (s32)
    if (ABS(x) < 100);

    // temp 1 reused
    this->a = this->b = x + 1;

    // temp 2 created (f32)
    function(Math_SinS(x));

    // temp 1 reused, temp 3 created (s32)
    if (ABS(x) < 100 && ABS(x) > 10);

    /* stack layout (not including padding):
     *  sp10: a
     *  sp0C: b
     *
     *  sp08: temp 1, s32
     *  sp04: temp 2, f32
     *  sp00: temp 3, s32
     */
}
```

#### uopt temps:

uopt creates temporary stack slots at the bottom of the stack, below cfe's temps. It seems to create temps for these kinds of expressions (non-exhaustive):

- indirect loads, including global variable accesses
- loop variable expressions (`i * 4`, `array[i]`, etc)
- floating point sometimes

Unlike cfe, uopt temps can store any type.

Often, stack problems involve moving a uopt temp into a specific stack offset, such as before a local variable's offset. This requires making enough user temps to free up one of the temp slots.

#### ugen temps/stack:

Ugen allocates space for `$ra`, and any saved registers that were allocated by uopt. It might be the case that ugen creates its own temporary variables.

#### Stack size

Uopt tries to decrease the stack size by setting it to the last stack slot that couldn't be assigned to a register.

However if the address of a local variable is used anywhere in the function, the full stack height is used.

### Register allocation

For a simple test program, the order in which Variable registers got allocated for variables was "as declared" and in the order v0, v1, a0, a1, a2, a3, t0, t1, t2, t3, t4, t5. After that point things started getting put on the stack. t6 and on might serve other roles than variable storage.

A second simple test for Saved registers shows the order is stored "as used", then by "as declared" and in the order s0, s1, s2, s3, s4, s5, s6, s7, s8. After that Arg and temp registers are used (a3, t0...)

The Codegen does not re-order instructions so you can still infer declaration order by both stack placement and instruction order.

Normal Register allocation order - As Declared :

### Function declarations matter

Calling a function with non-void return type consumes stack and can affect regalloc, even if the return value is ignored.

Calling a function that isn't declared will automatically declare it as a varargs function: `int f()`. Following C varargs type promotion rules, floats passed to the function will be casted to doubles (and avoid the f12..f15 registers), s8/u8/s16/u16 to s32, and as noted above, the `int` return type may affect regalloc/stack. This is a good reason to watch out for compiler warnings.

### Variables matter

Creating a temporary variable for an expression doesn't do anything, except possibly affect regalloc if the assignment is moved to another basic block.

However, _reusing_ a variable for several different computations can have weird effects (reorderings, different regalloc, ...). In particular the compiler generally tries to keep each variable in a single register. I guess a conclusion we can draw from this is that IDO does not use SSA form...

Sometimes an extra `move` operation is an indicator that a variable was used.

"It seems that when a variable (or at least an argument) is modified at any point in the code, all computations that require its value at a certain point (or at least its initial value) are done as soon as possible rather than as late as possible, even at the cost of having to store the results until they actually get used" (from testing on 7.1, 5.3 is probably similar)

Occasionally, static variables in can need to be declared as a local static variables to a function. This often shows itself as a use of an unneeded temporary variable (or many variables for structs).

### Types matter a bit

Types of different size are usually easy to distinguish, based on sign extensions (`sll x, 16; sra x, 16` indicates s16), zero extension (`and x, 0xffff` indicates u16), and loads (`lb`, `lbu` etc.). Pointers and `u32`/`s32` however are often impossible to distinguish. (In particular, all pointer types seem to be the same as each other.) Some cases where they differ:

- type casts can affect order of commutative operations like + and == (see "Order of commutative operations" further down).
- calling a function that takes `u32` vs `s32` with a `u8` variable can result in wildly different codegen (or just register changes).
- s32 and u32 multiplications are treated as different and can't be deduplicated; the same is probably true for addition
- bitfields: Use an arithmetic vs a logical shift depending on the signedness: `srl` (`u32`) vs `sra` (`s32`)
- constants have implicit types; an unsigned 1 differs from a signed 1, and makes the compiler unable to use the same register for both.
- whether multiplication by a constant is performed by an addition/shift chain or by `multu` can depend on types/casts/int promotion.

A common way in which u32 constants can appear is via `sizeof`.

If a function call accepts both lb and lbu or lh and lhu then the function parameter is an s32 as any other type would cause conversion before passing.

### Int promotion matters

When performing arithmetic on or comparing types smaller than s32, the operands will be converted to s32, or to u32 if a u32 value is involved. This can cause the effects listed above without having an actual cast be involved in the source code. Some examples:

- This code:

```c=
u8 mask = some->global.u8var;
if (mask & 1) { ... }
if (mask & 2) { ... }
```

is by C the same as

```c=
u8 mask = some->global.u8var;
if ((s32)mask & 1) { ... }
if ((s32)mask & 2) { ... }
```

which gets deduplicated to

```c=
u8 mask = some->global.u8var;
s32 mask2 = mask;
if (mask2 & 1) { ... }
if (mask2 & 2) { ... }
```

but without stack usage for `mask2`.

```c=
s32 mask2 = some->global.u8var;
if (mask2 & 1) { ... }
if (mask2 & 2) { ... }
```

is different in this case, avoiding a `mov`. `u32` gave wildly different codegen in one case, and different reg alloc in another.

- I had a longer version of

```c=
void f(u16 x) {
    if (x != 0) { ... }
}
```

involve an int promotion for `x`, which computed `x_int` as `x & 0xffff` and used that everywhere as `x`'s u16-reduced version, while

```c=
void f(u16 x) {
    if (x) { ... }
}
```

did not do that int promotion, and `x` was instead fetched from `sp + 0x22` each time it was needed.

- An `u16` variable `x` was involved in both a comparison `x == 0` and decremented by `x--`. The comparison promotes `x` to an `s32`, while the decrement keeps it as an `u16`. Thus, `x` used up two registers -- one for the u16 version of it and one for the promotion, and there was a `mov` between these. Changing the comparison from `x == 0` to `!x` got rid of the int-promoted version and thus the `move`, but left the bad reg alloc. Replacing `x--` by `x -= 1` (which is the same as `x = x - 1` and involves an integer promotion) and keeping the condition as `x == 0` got rid of the `u16` version and fixed reg alloc.

- Similar to the above but in reverse a `u16` constant was involved in both a comparison `x == 1` and an assignment `struct->var0 = 1`. The comparison was not promoting the 1 to an `s32` and neither was the assignment. In the assembly it was clear two registers were being used. This was made possible by rearranging the comparison `x - 1 == 0`. This promoted the constant to an `s32` and ensured that two registers were used.

### Different ways of writing literals

If `x` is an `f32`, `x = 1.0f` can also be written as `x = 1` or `x = 1.0`, usually without any effect on codegen (the compiler inserts a cast to f32, constant-evaluates its result, and throws away the old literal). However, it's not always exactly equivalent -- for instance, expression deduplication does not happen between the three versions, so the compiler may generate up to three copies of the `1.0f` if all three versions occur. The implicit cast can also impact where the constant is loaded. In particular the load for `1` can be deferred to where the literal is used, while `1.0f` can occur earlier. Interestingly, `1.f` is treated as different to `1.0f` with regards to deduplication.

(The same is true for `x + int literal`, `function(literal)`, etc.)

### Rodata literals

Are treated as "really const", while `extern const`s aren't. Thus, their loads can be e.g. hoisted to the start of a function and put in saved registers. This mostly affects float literals, and is a major reason to migrate rodata early.

### Volatile variables

If `x` is declared `volatile`, reading/writing to `x` will first compute its address, and then do a load/store.

If `x` is not `volatile`, the compiler usually (but not always) folds the `%lo` into the load/store.

### Loop unrolling

The compiler unrolls "small" loops, by a factor 2 or 4. (The definition of "small" varies wildly, and needs to be figured out.)

Adding a `continue;` or `i++; i--;` can prevent loop unrolling; I don't know if it has side effects (it's certainly a good sign that you're missing something).

Large struct copies are also done with unrolled loops (with a factor 3), but that obeys its own rules.

### Deduplication

The compiler has a Global Value Numbering pass which deduplicates expressions. However, the act of deduplication affects register allocation. Thus one can sometimes force different regalloc by duplicating various expressions, hoping they will get deduplicated by the compiler.

### Rematerialization of constants

If a local variable contains a constant (e.g. a memory address), and is referred to across a function call, the compiler might initialize it again on the other side of the function call, rather than storing it in a register or on the stack.

In some sense this does the opposite of the deduplication pass above, resulting in the funny effect that to make sure a label/pointer address is recomputed from scratch after a function call, you might want to put it in a local variable, while if it is preserved in a single register or on the stack, refer to it literally.

### Reused `%hi`

Two variables which are both referred to via `%hi`/`%lo` and which have the same `%hi` can share the register used to keep the `lui`. In general this is tricky for the compiler to know, because it runs before the linker phase -- however, when both variables are `non-extern` and within the same 16-byte block, the compiler is able to share `%hi`s.

### Function-scoped static variables

`static` variables that are declared within a function can be optimized more than static variables declared globally, e.g. to have stores elided.

### Function pointers

Taking a pointer to a function, either in global scope or in a function higher up, can (rarely) impact codegen of that function, e.g. by reorderings.

### `,` vs `;`

Separating statements by `,` instead of `;` can sometimes cause reorderings, similar to putting statements on the same line. See Whitespace below. Also, `(0, x)` instead of `x` in the middle of expressions can affect codegen (regalloc?).

### Ternaries

`a = (b ? c : d)` and `if (b) a = c; else a = d;` generate the same code, but occasionally with some reordering and regalloc differences. `(b ? (a = c) : (a = d))` generates the same code as the other ternary. This could be because the compiler needs to come up with a single value for the entire expression (even though it discards it later), or because it treats expressions and statements fundamentally differently.

### `&a[i]` vs `a + i`

While nominally the same thing, using `&a[i]` within a loop may trigger the compiler to keep an additional loop counter for `&a[i]`. `a + i`, on the other hand, is often computed by addition and multiplication. `&a[i]` might also cause main iterator to become a multiple of the array type size.

The two expressions may also sometimes result in different codegen/regalloc. `(*(A + B)).x`, `(a + b)->x` and `a[b].x` can all have different codegen. (But `(&a[b])->x` seems to be the same as `a[b].x` at least in one function.)

### source reg = target reg

If a register is both source and target for an operation, e.g. `xori t5,t5,0x1`, then either the same variable was both source and target, or that operation is an extension of the previous computation of that register. In the case of `xori`, it was probably a negated conditional (`a >= b` turned into `!(a < b)`); for `addi`, part of an address computation (e.g. `&x->array[index]`).

### Permanent (callee-save) registers

If a variable needs to survive past a function call (or several?), and it is read/written several times (?), it may get placed in a callee-save register (`s*`). Changing `a = b + c;` to `a = b; a += c;` might cause `a` to be placed in such a register.

### Assignment reorderings

`a->x = X; a->y = Y;` may be reordered as `a->y = Y; a->x = X;` if `X`/`a`/`Y`/`b` involve large computations. However, the computations, stack restores and register allocation of `X`/`Y` are still done in original order.

Similarly, the compiler can reorder stores to disjoint globals. This can be used to observe whether a temporary variable was used for an address -- alias analysis does not look at variable values.

If `x` and `y` are stack variables and `X`/`Y` don't involve function calls or branches, the assignment order is generally irrelevant -- the emission order instead depends on when they are used.

### Order of commutative operations

`a + b` and `b + a` tend to generate the same code, and similar for ==, !=, ^, &, |. The order used is not currently known; it seems to depend on at least whether a and b include array indexing, and type casts can also matter (even casting a variable to its own type). Maybe it depends on when a and b were created, and on their complexity? Speculation: this normalization might be done to make deduplication passes more powerful.

### Bitfields

```c=
struct A {
    u8 x;
}
struct A glob;
...
glob.x |= 8;
```

and

```c=
struct A {
    u8 a : 4;
    u8 b : 1;
}
struct A glob;
...
glob.b = 1;
```

generate the same code, except the latter allocates more registers (without using them).

Bitfields are allocated top-down, so in the above set of bitfields `a` would correspond to `x & 0xf0`, and `b` to `x & 0x8`.

Conditions like `if (glob.singleBitField)` are sometimes (but not always) emitted as:

- load 32 bits (regardless of the underlying type of `singleBitField`)
- shift left until the bit is in the sign bit
- branch on the sign bit (i.e. `bgt zero, x`)

`if (value & power of two)` can also emit this kind of pattern.

The underlying type of the bitfield cannot easily be determined from the asm (IDO can emit lw even for u8-based bitfields, or lbu for u32 ones, depending on which bits it needs), however, it can sometimes have an impact on regalloc.

### Struct copies

Copying a struct generates reorderings compared to copying each data member separately. It might also copy padding data (?), and if the size is 3 (mod 4) it may also generate `lwr`/`swr` instructions (like array initialization).

### Register skipping

If there are two left shifts `var << 4 << 4`, or a multiply then left shift `var * 16 << 4`, then the compiler will skip a temporary register.

For `s32` variables, doing `var << 1 >> 1` may also skip registers.

### Switch statements

For short switch statements the default case is sometimes hoisted to the top so that the branches to the other cases just fall through. Instruction ordering can be affected by the order of the cases so moving default to the end (where most programmers would usually put it) can help. Switches sometimes cause code to be duplicated into all the cases, either from before the switch or after it. (TODO: it seems likely that this is all due to branch-likely `b` instructions or similar optimizations by the assembler, and that duplicating instructions isn't actually something IDO intentionally does.)

### Optimized control flow (`if(0)` / `if(1)` / `do{}while(0)`)

If the compiler is able to constant-fold an if or while condition it will optimize the branch out, and in the `if(0)` case entirely remove the code within (without side effects on e.g. regalloc). However the compiler _will_ put code within and on both sides of `if(1)`/`do{}while(0)` in different basic blocks, which can prevent reorderings, and cause regalloc differences. Also, the increased number of basic blocks can have an impact on codegen; sometimes it helps to add multiple `if(1) {}` anywhere in a function.

### `if (...) { /* nothing */ }`

Empty if statement contents will cause the if to be optimized away; however, variables mentioned in the if condition will have their life length extended, which affects regalloc. This doesn't come up too often in practice, but can be used as a tool for regalloc experiments and for proving that parts of the function match except for unrelated regalloc diffs. (If the condition contains expressions with side effects, e.g. function calls or assignments, those still happen. However, fun fact: the compiler forgets to treat volatile reads as having a side effect at this point, resulting in volatile reads being optimized out; a compiler bug.)

Multiplication by zero is similarly optimized to zero but still affects regalloc (at least on 7.1).

The reason for this is that IDO performs dead code elimination in ugen, _after_ uopt has done register allocation. Thus, registers are allocated as if the `if` were to be emitted.

### Whitespace

Surprisingly, putting statements on the same line can cause instructions reorderings and (rarely) regalloc changes. Adding a line break between two statements generally lessens the amount of intertwinedness of the two statements. This typically happens because of:

- macros, which put their contents on a single line (`\` glues lines together; there is no way in a macro to generate a newline)
- for loops, whose declaration, condition and post-expression are all on the same line
- `,`-expressions, which have the same effect

### Assembler pass

After the codegen pass has run and emitted code (including regalloc), the output is processed by the assembler, which fixes up branch delay slots (see below), reorders instructions (like splitting up li $at and its subsequent use), and expands pseudo instructions.

The output of the codegen pass can be seen by passing the -S flag to the compiler; it may be instructive to look at this output for various functions to get a feeling for what the codegen pass tries to emit. It's much more straightforward than the actual assembled version. -k and -o are interesting as well.

$at is always generated by the assembler, when emitting pseudo instructions, e.g. `beq $t2, 5`, `la`, large immediates as operands. `lw` with a symbol as a name also gets expanded as a pseudo instruction, but doesn't use at. Instead it uses the same register twice, e.g. `lui $t2, hi lw .., lo($t2)`.

## Code patterns

### Casts

`u32` -> `u8` does `(x << 24) >> 24`. `s32` -> `s8` is the same but with arithmetic `>>`.
`u32` -> `f32` does a `s32` -> `f32` convert and adds `2^32` if `x < 0`.

### Comparisons

`x > y` is generally replaced by `x >= y + 1` when `y` is a constant (or vice versa?)
`x != 0` is generally written as `x > 0U`.

### Division

`x / 8` is rewritten as `(x < 0 ? (x + 7) >> 3 : x >> 3)`, `x / 1` as `x`. Modulo is done by `y = x & 7; (x < 0 && y != 0 ? y - 8 : y)`. Only powers of two are optimized.

When dividing a floating point number with a float constant which is a power of two, the compiler will convert the divide into a multiply by the constant's reciprocal: `float_var /= 64.0f` -> `float_var *= 0.015625f`. This is not done when the constant is an integer (e.g. 64 instead of 64.0f). If you see a `div.s` with a constant, then that constant is an integer.

### Goto

TODO: confirm. A `goto` will place the instruction at the target branch location inside the delay slot. This is similar to the behavior of branch-likely's except with normal branch instructions.

`break` is _not_ equivalent to a goto to just outside the loop.

### For vs While

For loops will produce different assembly to while loops despite the former being "converted to a while during compile" - _At least while dealing with unknown counts_
eg

```c=
i = 0;
while(setup.ailists[i].ailist)
{
    if (ID == setup.ailists[i].ID)
    {
        return setup.ailists[i].ailist;
    }
    i++;
}
//and
for (i = 0; setup.ailists[i].ailist; i++)
{
    if (ID == setup.ailists[i].ID)
    {
        return setup.ailists[i].ailist;
    }
}
```

The above are semantically the same, and due to the nature of the loop the while is recommended - however they produce different assembly and the for was correct.

### Branch delay slots / branch likely's

As far as the compiler's backend pass knows, branch delay slots don't exist -- they are fixed up by the assembler afterwards (see the Assembler pass section). Here's an old hypothesis about how it might work: if the assembler is able to reorder a branch with its preceding instruction, it does so. If it can't, it emits a branch-likely instruction pointing one step down from its real target. (This hypothesis isn't entirely correct, because sometimes there are branches with nop delay slots... Maybe branch-likely's are only used for forward jumps? However it _is_ true that when reading diffs, one can think of branch likely's as pointing one instruction above their stated target.) `b` instructions can also be invisible branch likelies, with the same "pointing one step down from its real target" behavior.

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

### Stack size

If the only difference is stack size evaluate if there are any temp variables that can be removed. Especially if they are just storing a pointer to an array or struct that can be directly dereferenced.

### Incorrect registers

| Target               | Current              |
| -------------------- | -------------------- |
| `0:    li      t8,1` | `0:    li      t0,1` |

It may be that the function params are incorrectly typed:
| Incorrect C | Matching C |
| --- | --- |
| `void func(s8 arg0, s8 arg1) {` | `void func(u8 arg0, u8 arg1) {` |

Rather than loading a value from an array/pointer into a temp variable manually to reference it multiple times - it may be correct to just directly reference the array/pointer every time: `D_80048198[arg0].unk10`

### v0

If v0 is being used for a variable and should not be, the function may need to return a value - which should use v0.

Loading and checking of a value being optimised away because it's known at compile time? Can prevent that by altering the value:
u8 continueOn = 1;
continueOn &= 1;

### li vs move

```asm
li      a0,0
jal     func_800072CC_7ECC
li      a1,0xf
```

if the first value is being loaded with `move a0,zero` instead of `li` the called func may be expecting a single u64 param rather than two params.

### Branching

If a branch instruction's registers are reversed, reversing the order in C may help. If not, and one is a literal value, try putting the literal into a var.

If you see `+ 1` happening to a var in a loop consider it may be a `for(;;)` loop.

If you see missing `b` after another type of branch you may have `if` that needs its `else` added.

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

- Replace `var_s0 = start; ... var_s0 += 1; ... while (var_s0 != limit)` with `for (i = start; i < limit; i++)`
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

### Constant encoding for -1 vs 255

When storing -1 to a `u8` array element, the compiler may optimize the constant to 255 (0x00FF) instead of -1 (0xFFFF), causing a mismatch in the immediate encoding.

To force the exact encoding `addiu reg, zero, -1` (0xFFFF), use a temporary `s8` variable:

```c
s8 neg_one = -1;
byteArray[index] = neg_one;
```

This prevents the compiler from optimizing the constant and ensures the correct instruction encoding.

### mips_to_c function signature inference

mips_to_c may incorrectly infer function parameters based on register setup in the assembly. If registers like `$a0` and `$a1` are set up before a function call but the actual function definition takes no parameters, the register setup might be for saving/preserving values rather than passing arguments.

Always verify function signatures by checking the actual function definition or examining what the function does with the registers. If a function accesses globals directly rather than using argument registers, it likely takes no parameters.

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

---

## Tiny / Simple Function Patterns

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

### sins/coss double-andi issue

When the masked u16 argument is stored in a s32 variable and then passed to sins(u16) or coss(u16), IDO generates TWO andi 0xFFFF instructions. This issue is hard to work around - even inline assignment `sins(sp18 = val & 0xFFFF)` doesn't fix it if sp18 is s32 and later reloaded for coss. Consider accepting NON_MATCHING if 5 iterations haven't resolved it.

### s16 arg with sw a0, 0(sp) delay slot issue

When a function takes `s16 arg0` and stores result via `sh`, IDO 5.3 generates a `sw a0, 0(sp)` (saves original 32-bit arg to the caller's argument home area). The correct C form is:

```c
void func(s16 arg0) { D_s16_GLOBAL = CONST - arg0; }
```

However IDO's scheduler may put `sh` vs `sw a0, 0(sp)` in the delay slot in either order depending on context. If the delay slot ordering doesn't match after trying once, accept NON_MATCHING. The correct function signature is `s16 arg0` (not `s32`) -- using `lh` at call sites and `sh` for the result confirms this.

### u8 vs s8 for global variables

Check which load instruction is used: `lbu` = `u8`, `lb` = `s8`. Using the wrong type will generate the wrong load instruction. E.g. `D_80047F80` should be `extern u8` (not `s8`) because functions access it with `lbu`.

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

### Two-return-register pattern (lh v1 + move v0,v1)

The `lh v1; jr ra; move v0, v1` pattern (vs `lh v0; jr ra; nop`) is a register allocation artifact where `v0` is considered live from an earlier conditional. Hard to fix; accept NON_MATCHING after 5 iterations if only this and register names differ.

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
