`incorrect ASM`: In a direct-array candidate for `func_80103308_1122B8`, initializing a zero-based index before the carried-coordinate condition blocks leaves the strength-reduced cursor initialization as zero-times-24 arithmetic:

```asm
sll   t2,zero,2
subu  t2,t2,zero
sll   t2,t2,3
addu  v0,v1,t2
```

-> `code changed`: Give the index its own definition in the immediate loop preheader, after the carried-coordinate reads and their empty observations. The repeated definition is retained because the index has already been read in that block. For the existing interior array symbol, use `index = 0;` immediately before the `do` loop and keep direct `D_801594E0[index]` accesses. A self-reading reset `index = index & 0;` also folds the initialization when a plain redundant definition would be deleted.

-> `correct ASM`: The shift/subtract/add chain disappears. The cursor is initialized directly from the array address:

```asm
lui   v1,0x8016
addiu v1,v1,-0x6b20
```

This fixes the cursor initialization calculation in the experimental indexed candidate. Register assignment and carried-coordinate preload addressing still differ; the function remains `NON_MATCHING`.
