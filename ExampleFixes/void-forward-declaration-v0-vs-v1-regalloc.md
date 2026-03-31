### void forward declaration fixing v0 vs v1 register allocation

**Pattern:** After a `jal` to a function defined elsewhere in the same file via `#pragma GLOBAL_ASM`, subsequent address computations use `v1` instead of the expected `v0`.

**Cause:** Without a forward declaration, the compiler treats the function as implicitly returning `int`, making `v0` appear "live" (holding the return value). The compiler then avoids reusing `v0` for the next computation, using `v1` instead.

**Fix:** Add a `void` forward declaration for the called function in `include/functions.us.h`. This tells the compiler no return value occupies `v0`, freeing it for register allocation.

**Example:**
```c
// Without declaration - compiler uses v1 for &D_801591CA
func_800FAD10_109CC0();
D_801591CA = 0;            // lui v1, ... / addiu v1, ...

// With "void func_800FAD10_109CC0(void);" in functions.us.h
func_800FAD10_109CC0();
D_801591CA = 0;            // lui v0, ... / addiu v0, ...
```

**Key insight:** Functions behind `#pragma GLOBAL_ASM` in `#ifdef NON_MATCHING` blocks are NOT visible to the compiler as declarations. Only the assembly is included via the pragma in the `#else` branch, so the compiler falls back to implicit `int` return type.
