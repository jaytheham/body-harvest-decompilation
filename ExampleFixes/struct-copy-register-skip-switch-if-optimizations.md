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

Empty if statement contents will cause the if to be optimized away; however, variables mentioned in the if condition will have their life length extended, which affects regalloc.

Multiplication by zero is similarly optimized to zero but still affects regalloc (at least on 7.1).

The reason for this is that IDO performs dead code elimination in ugen, _after_ uopt has done register allocation. Thus, registers are allocated as if the `if` were to be emitted.
