# -O2 decompilation (for IDO 5.3 and 7.1)

### Preliminaries

- make sure the file compiles without warnings; warnings can hint about weird things you're doing that will cause non-matchings
- in particular, make sure all functions you call are declared
- O2, and O3 will assign registers automatically. Any variable defined as `register` will become a "normal" variable (eg, `register int a;` simply becomes `int a;`)

### Regalloc differences

- move statements around
- introduce temporary variables for subexpressions, and move their assignments around
- in particular, try moving statements between different basic blocks
- duplicate expressions and use the compiler's deduplication machinery
- reuse variables
- fiddle with int promotion if relevant
- special compiler-generated patterns, like turning `(x ^ A) < 1` back into `x == A`, or recognizing bit field access
- initialize variables within loop headers
- `-var` uses the same destination reg vs `-1*var` which uses a separate distination reg in O2. -g is identical
- change void function calls to a relevant type, i.e. f32, u32. -g is identical

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

## Compiler behavior

### Stack

#### Local variable placement

`-g` and `-O2` place things on the stack in the same way. (TODO: verify this.) However, the optimizer can then move some variables into registers, leaving slots empty. If an explicitly declared stack variable is unused or placed in a register, and it is last in the declaration order, it won't affect `sp`. (Thus, a strategy for getting correct stack usage is to first move all stack-placed variables to their correct place on the stack, then either pad with unused variables at the top of the stack to increase stack size, or move registers variables from the start to the end of the declaration order to decrease it.)

Hypothesis: the compiler does a naive codegen pass, involving creating pseudo registers for a lot of expressions, each of which gets an assigned place on the stack. Then the optimizer runs and places most expressions in registers, but they keep their reserved stack space.

Stack variables are placed in "as declared" order - non-declared temporary variables are placed at end of stack:

```c=
int var1; //0 or -56
int var2; //4 or -52
int var3; //8 or -48
...
int var12; //48 or -8
int var13; //52 or -4

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
    int a, b;
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
     *  sp08: temp 1, int
     *  sp04: temp 2, float
     *  sp00: temp 3, int
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

Ugen allocates space for `$ra`, and any saved registers that were allocated by uopt. It might be the case that ugen creates its own temporary variables. (Needs more investigating).

#### Stack size

Uopt tries to decrease the stack size by setting it to the last stack slot that couldn't be assigned to a register.

However if the address of a local variable is used anywhere in the function, the full stack height is used.

### Register allocation

TODO: we really need to figure this out.

For a simple test program, the order in which Variable registers got allocated for variables was "as declared" and in the order v0, v1, a0, a1, a2, a3, t0, t1, t2, t3, t4, t5. After that point things started getting put on the stack. t6 and on might serve other roles than variable storage.

A second simple test for Saved registers shows the order is stored "as used", then by "as declared" and in the order s0, s1, s2, s3, s4, s5, s6, s7, s8. After that Arg and temp registers are used (a3, t0...)

The Codegen does not re-order instructions so you can still infer declaration order by both stack placement and instruction order.

Normal Register allocation order - As Declared :

```c=
int var1; //v0
int var2; //v1
int var3; //a0
...
int var12; //t5
int var13; //sp(xx)
```

Saved Register allocation order - As first Used (not saved), then by declaration order :

```c=
    int regs0  = 0; //s0 // regs0 is used first so get s0
    int regs1  = 1; //s1  {s2 if s3 switch uncommented}
    int regs2  = 2; //s2  {s3 if s3 switch uncommented}
    int regs3  = 3; //s3  {s1 if s3 switch uncommented}
    int regs4  = 4; //s4
    int regs5  = 5; //s5
    int regs6  = 6; //s6
    int regs7  = 7; //s7
    int regs8  = 8; //s8
    int regs9  = 9; //t8 [sp104]
    int regs10 = 10;//t9 [sp100]
    int regs11 = 11;//t0 [sp96]
...
    switch (((char *)regs0)[0]) //regs0 used first
    {
        case 0:
        { // if this block is un-commented regs3 used second, and becomes s1
            /*switch (((char *)regs3)[0])
            {
                case 0:
                    return;
                case 1:
                    return;
            }*/
            //9, 10 & 11 re-load from sp to t8/9/0
            regs0 = chraiGoT2oLabel(regs0,
                                    regs1,
                                    regs2,
                                    regs3,
                                    regs4,
                                    regs5,
                                    regs6,
                                    regs7,
                                    regs8,
                                    regs9,
                                    regs10,
                                    regs11);
            break;
        }
        ...

```

```c=
    int regs0  = 0; //s1  {s2 if s3 switch uncommented}
    int regs2  = 2; //s2  {s3 if s3 switch uncommented}
    int regs3  = 3; //s3  {s1 if s3 switch uncommented}
    int regs4  = 4; //s4
    int regs1  = 1; //s5 // this becomes s5 as it was declared 5th
    int regs5  = 5; //s6
    int regs6  = 6; //s0 // this becomes s0 as its used first
    int regs9  = 9; //s7
    int regs10 = 10;//s8
    int regs11 = 11;//t8 [sp104]
    int regs7  = 7; //t9 [sp100]
    int regs8  = 8; //t0 [sp96]
...
    switch (((char *)regs6)[0]) //regs6 used first
    {
        case 0:
        {   // if this block is un-commented regs3 used second and becomes s1
            /*switch (((char *)regs3)[0])
            {
                case 0:
                    return;
                case 1:
                    return;
            }*/
        //7, 8 & 11 re-load from sp to t8/9/0
            regs0 = chraiGoT2oLabel(regs0,
                                    regs1,
                                    regs2,
                                    regs3,
                                    regs4,
                                    regs5,
                                    regs6,
                                    regs7,
                                    regs8,
                                    regs9,
                                    regs10,
                                    regs11);
            break;
        }
        ...
```

### Function declarations matter

Calling a function with non-void return type consumes stack and can affect regalloc, even if the return value is ignored.

Calling a function that isn't declared will automatically declare it as a varargs function: `int f()`. Following C varargs type promotion rules, floats passed to the function will be casted to doubles (and avoid the f12..f15 registers), s8/u8/s16/u16 to s32, and as noted above, the `int` return type may affect regalloc/stack. This is a good reason to watch out for compiler warnings.

With -framepointer, `void f(void)` may use 4 bytes more stack than `void f()`.

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

```c=
lb	a3,128(v0)
jal	handles_shot_actors
...
lbu	a3,2(s1)
jal	handles_shot_actors
```

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

If `x` is declared `volatile`, reading/writing to `x` will first compute its address, and then do a load/store:

```bash=
lui   $t6, %hi(x)
addiu $t6, %lo(x)
sw    $zero, ($t6)
```

If `x` is not `volatile`, the compiler usually (but not always) folds the `%lo` into the load/store:

```bash=
lui   $t6, %hi(x)
sw    $zero, %lo(x)($t6)
```

### Loop unrolling

The compiler unrolls "small" loops, by a factor 2 or 4. (The definition of "small" varies wildly, and needs to be figured out.)

Adding a `continue;` or `i++; i--;` can prevent loop unrolling; I don't know if it has side effects (it's certainly a good sign that you're missing something). Passing `-Wo,-loopunroll,0` to the compiler disables loop unrolling completely.

Large struct copies are also done with unrolled loops (with a factor 3), but that obeys its own rules.

### Deduplication

The compiler has a Global Value Numbering pass which deduplicates expressions. However, the act of deduplication affects register allocation. Thus one can sometimes force different regalloc by duplicating various expressions, hoping they will get deduplicated by the compiler. (Hypothesis: deduplication pushes a new expression onto an expression list (last), and regalloc traverses assigns registers to expressions in order of appearance within this list.)

### Rematerialization of constants

If a local variable contains a constant (e.g. a memory address), and is referred to across a function call, the compiler might initialize it again on the other side of the function call, rather than storing it in a register or on the stack.

In some sense this does the opposite of the deduplication pass above, resulting in the funny effect that to make sure a label/pointer address is recomputed from scratch after a function call, you might want to put it in a local variable, while if it is preserved in a single register or on the stack, refer to it literally.

### Reused `%hi`

Two variables which are both referred to via `%hi`/`%lo` and which have the same `%hi` can share the register used to keep the `lui`. In general this is tricky for the compiler to know, because it runs before the linker phase -- however, when both variables are `non-extern` and within the same 16-byte block, the compiler is able to share `%hi`s.

### Function-scoped static variables

`static` variables that are declared within a function can be optimized more than static variables declared globally, e.g. to have stores elided.

### Function pointers

Taking a pointer to a function, either in global scope or in a function higher up, can (rarely) impact codegen of that function, e.g. by reorderings. (TODO: does this include function calls as well?)

### `,` vs `;`

Separating statements by `,` instead of `;` can sometimes cause reorderings, similar to putting statements on the same line. See Whitespace below. Also, `(0, x)` instead of `x` in the middle of expressions can affect codegen (regalloc?).

### Ternaries

`a = (b ? c : d)` and `if (b) a = c; else a = d;` generate the same code, but occasionally with some reordering and regalloc differences. `(b ? (a = c) : (a = d))` generates the same code as the other ternary. This could be because the compiler needs to come up with a single value for the entire expression (even though it discards it later), or because it treats expressions and statements fundamentally differently. (Edit: or maybe this is just whitespace sensitivity again! I should re-test.)

### `&a[i]` vs `a + i`

While nominally the same thing, using `&a[i]` within a loop may trigger the compiler to keep an additional loop counter for `&a[i]`. `a + i`, on the other hand, is often computed by addition and multiplication. `&a[i]` might also cause main iterator to become a multiple of the array type size.

Ex:

```c=
s32 i;
s32 *arr;
for (i = 0; i < 10; i++)` {
    s32 x = arr[i];
    ...
}
```

may get compiled to:

```c=
s32 i;
s32 *arr;
s32 *arr_tmp = arr;
for (i = 0; i < 40; i += 4, arr_tmp++) {
    s32 x = *arr_tmp;
    ...
}
```

or if 10 is a constant and the array global

```c=
s32 i;
s32 *arr;
s32 *arr_tmp;
s32 *arr_end = &arr[10];
for (arr_tmp = arr; arr_tmp != arr_end; arr_tmp++) {
    s32 x = *arr_tmp;
    ...
}
```

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

https://hackmd.io/@EllipticEllipsis/ryEtn3obn has more notes on this topic.

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

Note that the -S compiler output uses $1 instead of $at and so on.

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
