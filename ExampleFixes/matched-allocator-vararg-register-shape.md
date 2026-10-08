### Match allocator byte preservation across a vararg call

When an allocated `u8` slot must be passed to a second helper and later supplied to a variadic error-print call, IDO's register and spill choices can depend on the full local declaration shape and the vararg cast. A useful matched reference is `func_800CE040_DCFF0`:

```c
f32 dummy1;
f32 dummy2;
u8 slot = allocate(...);
s32 effect;

if (slot != 0xFB) {
    effect = getChild(slot);
    if (effect == -3) {
        osSyncPrintf(format, (unsigned long)slot);
        ...
    }
}
```

This pattern can make IDO keep the byte in `$a1`, use `$a0` for the helper argument, and spill/reload the byte at `sp+0x1F` across calls. Passing the `u8` directly to the variadic print instead may place it in `$a2` and add a `move` before the print call. Keep the local types and declaration order close to the matched reference when targeting this sequence.

Also recheck format-string symbol offsets after changing local types or dummy declarations. In `func_80089648_171708`, the matched local shape changed the emitted low address for `D_800A5384_18D444 - 16`; referring to `D_800A5384_18D444` directly restored the target `0x5384` address.
