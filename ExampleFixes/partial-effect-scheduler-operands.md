# Unsigned timer byte restores ANDI before the second store

In `func_800E74DC_F648C` (`CFE30.c`), declaring `D_80157533` as `u8` changed the narrowing for the second timer store from signed extension to the target `andi`:

```c
D_80157533 = arg4 / minimum;
D_80157534 = D_80157533;
```

The matched update function also reads this symbol through a byte view.
