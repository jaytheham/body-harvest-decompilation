### u8 parameter as loop counter: normalize first, then set pointer constant

When a non-leaf function uses a `u8` argument as an outer loop counter across calls, the target may keep the counter in a callee-saved register and emit:

```asm
move   s2,a0
addiu  s2,s2,-1
andi   t6,s2,0xff
lui    s1,%hi(symbol)
sw     a0,home(sp)
move   s2,t6
beqz   t6,label
 addiu s1,s1,%lo(symbol)
```

To get this pattern in C:

```c
s32 func(u8 arg0) {
    s32 ptr;

    arg0--;
    arg0 = (u8)arg0;
    ptr = (s32)&D_symbol;
    if (arg0 != 0) {
        do {
            ...
        } while (--arg0 != 0);
    }
    ...
}
```

Key points:
- Use the `u8` parameter itself as the loop counter instead of copying it to a separate local.
- Normalize the decremented value before the `if`.
- Put the pointer constant setup after that normalization. This lets IDO schedule `lui` before the branch and `addiu` in the branch delay slot.
