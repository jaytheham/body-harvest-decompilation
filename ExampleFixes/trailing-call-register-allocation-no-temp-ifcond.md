### Trailing call register allocation: prefer no-temp-variable and if (cond) over if (cond != 0)

When a function has a conditional block followed by an unconditional call at the end, using a local struct pointer variable OR writing if (func() != 0) can cause the compiler to choose a2 for the restored arg0, adding an andi a0, a2, 0xff in the jal delay slot instead of
op.

Fix:

- Use direct array subscript D_array[arg0].field instead of a local Type \*ptr
- Write if (func(arg0, x)) instead of if (func(arg0, x) != 0)
- Ensure called functions are properly declared in functions.us.h (implicit declarations can affect register allocation)
