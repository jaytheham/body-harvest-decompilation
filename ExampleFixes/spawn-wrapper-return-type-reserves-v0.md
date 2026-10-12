# A spawn wrapper's return type can reserve v0 in its caller

In func_800BC2F8_CB2A8, all instructions matched except the vehicle pointer immediately after calling func_800DF9C8_EE978: the target used v1, while the C build used v0. Changing condition expressions and local types did not fix it.

The spawn wrapper was declared void, but a Java-level caller consumes its return value as a particle index. The wrapper calls the s32-returning particle allocator func_800DF038_EDFE8, clears its mode flag, and returns without overwriting v0. Its real return type is s32.

Correct the declaration in functions.us.h and explicitly return the allocator result from the already matched wrapper:

```c
s32 result;
D_80153B87 = 1;
result = func_800DF038_EDFE8(arg0, arg1, arg2, arg3, arg4, arg5);
D_80153B87 = 0;
return result;
```

The wrapper's assembly stays identical. In the caller, IDO reserves v0 for the returned value, even though that caller discards it, and allocates the subsequent vehicle pointer to v1. Both function diffs became zero and the complete ROM verified OK.

When a pointer differs only between v0 and v1 immediately after a call, inspect the callee's return flow and other callers before changing unrelated locals. A wrapper that leaves v0 untouched may pass through a meaningful return value.
