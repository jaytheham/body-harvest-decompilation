### Read-modify-write (`*ptr &= mask; *ptr |= val;`) forces dead-store intermediate

When assembly shows two sequential `sb` stores to the same pointer — e.g.:

```asm
lbu  t2, 0(v1)
andi t4, t2, 0xF0   ; mask
sb   t4, 0(v1)      ; DEAD store (immediately overwritten)
or   t5, t4, a2
sb   t5, 0(v1)      ; final store
```

the pattern preserving both stores is the two-step read-modify-write idiom on a u8 pointer:

```c
u8 *ptr = &D_array[(arg1 << 4) + arg0 / 2];
*ptr &= 0xF0;
*ptr |= arg2;
```

If you instead write `*ptr = (*ptr & 0xF0) | arg2;` (single expression) or `masked = *ptr & 0xF0; *ptr = masked | arg2;` (explicit temp), IDO's dead-store elimination removes the intermediate store and only emits ONE `sb`. Use `*ptr &= ...; *ptr |= ...;` to force both stores.
