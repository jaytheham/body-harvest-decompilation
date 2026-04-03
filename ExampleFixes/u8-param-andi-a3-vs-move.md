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

### Extended: `u8 arg0` with write-then-read global halfword + osSyncPrintf

When the target has `andi a2, a0, 0xFF` (result in a2 specifically), and the function writes arg0 to a global u16 via preloaded v0 (`lui v0; addiu v0; sh a2, 0(v0)`) and the same v0 address is then used by osSyncPrintf args, the correct pattern is:

```c
void func_foo(u8 arg0) {
    D_some_global_s32 = 1;
    D_some_halfword = arg0;              // write u8 to u16 global (triggers v0 CSE)
    osSyncPrintf(&fmt, D_some_halfword, arg0);  // read global for a1 CSE'd to andi, arg0 is a2
    ...
}
```

This produces:
- `sw a0, 0x18(sp)` + `andi a2, a0, 0xFF` early in prologue (u8 home save)
- `lui v0; addiu v0; sh a2, 0(v0)` for the halfword write (preloaded address via CSE)
- `andi a1, a2, 0xFFFF` in the jal delay slot (CSE: the just-written value is known = a2)

Key: pass the halfword global as the first unnamed printf arg and the u8 arg directly as the second — IDO CSEs the read away and uses the register directly in the delay slot.

