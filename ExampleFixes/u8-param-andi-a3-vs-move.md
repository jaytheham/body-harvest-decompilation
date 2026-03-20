### `u8 arg0` parameter: `andi a3, a0, 0xFF` vs `move a3, a0` + `andi t8, a3, 0xFF`

When the target has `andi a3, a0, 0xFF` as the first instruction (zero-extending arg0 into a3), declare the parameter as `u8 arg0` and use `arg0` *directly* in expressions (no explicit `& 0xFF`):

```c
// Wrong (s32 arg0 + u8 temp OR s32 arg0 + explicit & 0xFF → extra "move a3,a0" instruction):
void func_foo(s32 arg0) {
    u8 temp = arg0;     // IDO: "move a3, a0; andi t8, a3, 0xFF" (WRONG)
    use(temp * 0x78);
}

// Correct (u8 arg0 directly → "andi a3, a0, 0xFF" with no extra move):
void func_foo(u8 arg0) {
    use(arg0 * 0x78);   // IDO: "andi a3, a0, 0xFF; sll t8, a3, ..."
}
```

IDO at -O2 consistently places the zero-extended `u8` argument in register `a3` (the last argument register) when the function is called with only `a0` occupied. The `sw a0, 0x18(sp)` home-area save in the target is also produced by this form.
