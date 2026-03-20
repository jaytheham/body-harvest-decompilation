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
