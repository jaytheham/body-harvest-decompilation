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
