`incorrect ASM`

In `func_8008BD18_173DD8`, the chained white color stores match, but preparing their value advances the temporary register sequence for the following render mode packet:

```asm
addiu t7,v0,8
sw    t7,0(t0)
sw    t9,4(v0)
sw    t8,0(v0)
```

-> `code changed`: Put the white stores in a `do { ... } while (0)` block and use `0xFF + ((u32)arg6 - (u32)arg6)` as their value. IDO folds the subtraction and emits the color directly, restoring the packet temporaries. An empty `if (D_8005BB2C != NULL) {}` after the color stores in the same block keeps the cursor's register live during allocation, so the white byte uses `v1` instead of `v0`.

-> `correct ASM`: The white stores use `li v1,0xff` and `sb v1,...`. The packet uses the original temporaries and the assembler places both command constants in their original positions:

```asm
addiu t6,v0,8
sw    t6,0(t0)
sw    t8,4(v0)
sw    t7,0(v0)
```
