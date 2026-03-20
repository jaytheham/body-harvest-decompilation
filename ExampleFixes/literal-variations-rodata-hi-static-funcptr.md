### Different ways of writing literals

If `x` is an `f32`, `x = 1.0f` can also be written as `x = 1` or `x = 1.0`, usually without any effect on codegen (the compiler inserts a cast to f32, constant-evaluates its result, and throws away the old literal). However, it's not always exactly equivalent -- for instance, expression deduplication does not happen between the three versions, so the compiler may generate up to three copies of the `1.0f` if all three versions occur. The implicit cast can also impact where the constant is loaded. In particular the load for `1` can be deferred to where the literal is used, while `1.0f` can occur earlier. Interestingly, `1.f` is treated as different to `1.0f` with regards to deduplication.

(The same is true for `x + int literal`, `function(literal)`, etc.)

### Rodata literals

Are treated as "really const", while `extern const`s aren't. Thus, their loads can be e.g. hoisted to the start of a function and put in saved registers. This mostly affects float literals, and is a major reason to migrate rodata early.


### Reused `%hi`

Two variables which are both referred to via `%hi`/`%lo` and which have the same `%hi` can share the register used to keep the `lui`. In general this is tricky for the compiler to know, because it runs before the linker phase -- however, when both variables are `non-extern` and within the same 16-byte block, the compiler is able to share `%hi`s.

### Function-scoped static variables

`static` variables that are declared within a function can be optimized more than static variables declared globally, e.g. to have stores elided.

### Function pointers

Taking a pointer to a function, either in global scope or in a function higher up, can (rarely) impact codegen of that function, e.g. by reorderings.
