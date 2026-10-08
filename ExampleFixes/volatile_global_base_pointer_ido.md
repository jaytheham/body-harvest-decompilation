### Volatile pointee can preserve a global base register across a call

When IDO folds a global object's address and a field offset into a single
absolute access, but the target materializes the object base and accesses the
field through that register, a local pointer to a `volatile` struct can keep
the base-pointer form:

```c
volatile State *state;
state = (State *)globalState;
if (state) {}
call((s32)state->handle);
state = (State *)globalState;
state->handle = NULL;
```

In `func_8007C8BC_16497C`, this produced the target's `lui`/`addiu` base
address and field-offset access around the cleanup call. Reassigning the
pointer after the call also lets IDO rebuild the base after the call. The
empty null check has no runtime instruction here, but helped reproduce the
reference pointer pattern. Verify the full function: pointer volatility and
assignment placement can affect register allocation.
