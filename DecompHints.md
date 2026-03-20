
- O2 ignores `register` eg, `register s32 a;` becomes `s32 a;`
- If a parameter is ever `arg0 && 0xFF` or `arg0 && 0xFFFF` that is an indication that it should actually be defined as a u8 or u16 - especially if it is `&&` every time it is used.
- If v0 is being used for a variable and should not be, the function may need to return a value - which should use v0.
- If a branch instruction's registers are reversed, reversing the order in C may help. If not, and one is a literal value, try putting the literal into a var.
- If you see `+ 1` happening to a var in a loop consider it may be a `for(;;)` loop.
- If you see missing `b` after another type of branch you may have `if` that needs its `else` added.
- A variable being decremented and being checked for != 0 is also usually a `while (var--)`
- If the stack size is too large, evaluate are there any temp variables that can be removed. Especially if they are storing a pointer to an array or struct that can be directly dereferenced.

### Register allocation differences
- move statements around
- remove or introduce temporary variables for subexpressions, and move their assignments around
- move statements between different basic blocks
- duplicate expressions to use the compiler's deduplication
- reuse variables
- fiddle with int promotion if relevant
- try removing any casts and "un-natural" logic.

### Instruction reorderings
- move statements around
- use `if(1)`'s to put statements in different basic blocks
- introduce temporary variables for subexpressions, and move their assignments around
- separate statements via `,` instead of `;`, or put them on the same line
- change the control flow, e.g. `?:` vs `if`/`else`, or early returns vs normal control flow
- copy a whole struct rather than copying members individually

### Stack local variable placement
The optimizer can move some variables into registers, leaving stack slots empty. If an explicitly declared stack variable is unused or placed in a register, and it is last in the declaration order, it won't affect `sp`. (Thus, a strategy for getting correct stack usage is to first move all stack-placed variables to their correct place on the stack, then either pad with unused variables at the top of the stack to increase stack size, or move registers variables from the start to the end of the declaration order to decrease it.)
**Padding with unused variables (not-last rule):** If a stack frame is too small (e.g., sp3C ends up at 0x34 instead of 0x3c), declare extra unused `s32` variables BETWEEN the first variable and the next real one. Because they are NOT last in declaration order, IDO still reserves their stack slots even if they're never used. Two unused `s32` variables between `sp3C` and `sp24` add 8 bytes (moving both into the correct positions)

### Casts
`u32` -> `u8` does `(x << 24) >> 24`. `s32` -> `s8` is the same but with arithmetic `>>`.
`u32` -> `f32` does a `s32` -> `f32` convert and adds `2^32` if `x < 0`.

### Comparisons
`x > y` is generally replaced by `x >= y + 1` when `y` is a constant (or vice versa?)
`x != 0` is generally written as `x > 0U`.

### Whitespace
Adding a line break between two statements generally lessens the amount of intertwinedness of the two statements. This typically happens because of:
- macros, which put their contents on a single line (there is no way in a macro to generate a newline)
- for loops, whose declaration, condition and post-expression are all on the same line

### `,` vs `;`
Separating statements by `,` instead of `;` can cause reorderings, similar to putting statements on the same line. Also, `(0, x)` instead of `x` in the middle of expressions can affect codegen.

### Ternaries
`a = (b ? c : d)` and `if (b) a = c; else a = d;` generate the same code, but occasionally with some reordering and regalloc differences. `(b ? (a = c) : (a = d))` generates the same code as the other ternary.

### `&a[i]` vs `a + i`
While nominally the same thing, using `&a[i]` within a loop may trigger the compiler to keep an additional loop counter for `&a[i]`. `a + i`, on the other hand, is often computed by addition and multiplication. `&a[i]` might also cause main iterator to become a multiple of the array type size.
The two expressions may also sometimes result in different codegen/regalloc. `(*(A + B)).x`, `(a + b)->x` and `a[b].x` can all have different codegen. (But `(&a[b])->x` seems to be the same as `a[b].x` at least in one function.)

### source reg = target reg
If a register is both source and target for an operation, e.g. `xori t5,t5,0x1`, then either the same variable was both source and target, or that operation is an extension of the previous computation of that register. In the case of `xori`, it was probably a negated conditional (`a >= b` turned into `!(a < b)`); for `addi`, part of an address computation (e.g. `&x->array[index]`).

### Permanent (callee-save) registers
If a variable needs to survive past a function call, and it is read/written several times, it may get placed in a callee-save register (`s*`). Changing `a = b + c;` to `a = b; a += c;` might cause `a` to be placed in such a register.

### Volatiles
If `x` is declared `volatile`, reading/writing to `x` will first compute its address, and then do a load/store.
If `x` is not `volatile`, the compiler usually folds the `%lo` into the load/store.

### Loop unrolling
The compiler unrolls "small" loops, by a factor 2 or 4.
Adding a `continue;` or `i++; i--;` can prevent loop unrolling.
Large struct copies are also done with unrolled loops (with a factor 3), but that obeys its own rules.

### Deduplication
The compiler has a Global Value Numbering pass which deduplicates expressions. However, the act of deduplication affects register allocation. Thus one can sometimes force different regalloc by duplicating various expressions.

### Rematerialization of constants
If a local variable contains a constant (e.g. a memory address), and is referred to across a function call, the compiler might initialize it again on the other side of the function call, rather than storing it in a register or on the stack.
This kinda does the opposite of the deduplication pass above, so to make sure a label/pointer address is recomputed from scratch after a function call, maybe put it in a local variable, while if it is preserved in a single register or on the stack, refer to it literally.

### Function declarations
Calling a function with non-void return type consumes stack and can affect regalloc, even if the return value is ignored.
Calling a function that isn't declared will automatically declare it as a varargs function: `int f()`. Following C varargs type promotion rules, floats passed to the function will be casted to doubles (and avoid the f12..f15 registers), s8/u8/s16/u16 to s32, the `int` return type may affect regalloc/stack.

### Variables
Creating a temporary variable for an expression doesn't do anything, except possibly affect regalloc if the assignment is moved to another basic block.
However, _reusing_ a variable for several different computations can have weird effects (reorderings, different regalloc, ...). In particular the compiler generally tries to keep each variable in a single register.
Sometimes an extra `move` operation is an indicator that a variable was used.
It seems that when a variable (or at least an argument) is modified at any point in the code, all computations that require its value at a certain point (or at least its initial value) are done as soon as possible rather than as late as possible, even at the cost of having to store the results until they actually get used
Occasionally, static variables can need to be declared as local static variables to a function. This often shows itself as a use of an unneeded temporary variable (or many variables for structs).

### Types
Types of different size are usually easy to distinguish, based on sign extensions (`sll x, 16; sra x, 16` indicates s16), zero extension (`and x, 0xffff` indicates u16), and loads (`lb`, `lbu` etc.). Pointers and `u32`/`s32` however are often impossible to distinguish. Some cases where they differ:
- type casts can affect order of commutative operations like + and == (see "Order of commutative operations" further down).
- calling a function that takes `u32` vs `s32` with a `u8` variable can result in wildly different codegen (or just register changes).
- s32 and u32 multiplications are treated as different and can't be deduplicated; the same is probably true for addition
- bitfields: Use an arithmetic vs a logical shift depending on the signedness: `srl` (`u32`) vs `sra` (`s32`)
- constants have implicit types; an unsigned 1 differs from a signed 1, and makes the compiler unable to use the same register for both.
- whether multiplication by a constant is performed by an addition/shift chain or by `multu` can depend on types/casts/int promotion.
A common way in which u32 constants can appear is via `sizeof`.
If a function call accepts both lb and lbu or lh and lhu then the function parameter is an s32 as any other type would cause conversion before passing.
