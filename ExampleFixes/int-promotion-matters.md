### Int promotion matters

When performing arithmetic on or comparing types smaller than s32, the operands will be converted to s32, or to u32 if a u32 value is involved. This can cause the effects listed above without having an actual cast be involved in the source code. Some examples:

- This code:

```c=
u8 mask = some->global.u8var;
if (mask & 1) { ... }
if (mask & 2) { ... }
```

is by C the same as

```c=
u8 mask = some->global.u8var;
if ((s32)mask & 1) { ... }
if ((s32)mask & 2) { ... }
```

which gets deduplicated to

```c=
u8 mask = some->global.u8var;
s32 mask2 = mask;
if (mask2 & 1) { ... }
if (mask2 & 2) { ... }
```

but without stack usage for `mask2`.

```c=
s32 mask2 = some->global.u8var;
if (mask2 & 1) { ... }
if (mask2 & 2) { ... }
```

is different in this case, avoiding a `mov`. `u32` gave wildly different codegen in one case, and different reg alloc in another.

- I had a longer version of

```c=
void f(u16 x) {
    if (x != 0) { ... }
}
```

involve an int promotion for `x`, which computed `x_int` as `x & 0xffff` and used that everywhere as `x`'s u16-reduced version, while

```c=
void f(u16 x) {
    if (x) { ... }
}
```

did not do that int promotion, and `x` was instead fetched from `sp + 0x22` each time it was needed.

- An `u16` variable `x` was involved in both a comparison `x == 0` and decremented by `x--`. The comparison promotes `x` to an `s32`, while the decrement keeps it as an `u16`. Thus, `x` used up two registers -- one for the u16 version of it and one for the promotion, and there was a `mov` between these. Changing the comparison from `x == 0` to `!x` got rid of the int-promoted version and thus the `move`, but left the bad reg alloc. Replacing `x--` by `x -= 1` (which is the same as `x = x - 1` and involves an integer promotion) and keeping the condition as `x == 0` got rid of the `u16` version and fixed reg alloc.

- Similar to the above but in reverse a `u16` constant was involved in both a comparison `x == 1` and an assignment `struct->var0 = 1`. The comparison was not promoting the 1 to an `s32` and neither was the assignment. In the assembly it was clear two registers were being used. This was made possible by rearranging the comparison `x - 1 == 0`. This promoted the constant to an `s32` and ensured that two registers were used.

