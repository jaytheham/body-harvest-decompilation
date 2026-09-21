#### Matching a local `s16` array and lookup register allocation

When a target keeps a four-element `s16` temporary array at the top of a larger stack frame, placing an unused `s32 pad[2]` after the array can preserve the required `sp` offset while leaving the padding unreferenced in the generated code. Declaration order matters because IDO allocates locals in reverse order.

If a chained table lookup should produce its first result in `v0`, make that intermediate explicit and reuse it for the next lookup:

```c
temp_v0 = table[array[0]].unkC;
array[1] = temp_v0;
array[2] = table[temp_v0].unkC;
```

This can match both the target's `v0` result register and the subsequent address calculation better than assigning the first lookup directly to the array element.
