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
