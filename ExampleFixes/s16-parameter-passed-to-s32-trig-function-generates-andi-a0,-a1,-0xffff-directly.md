### `s16` parameter passed to `s32` trig function generates `andi a0, a1, 0xffff` directly

When a function has an `s16 arg1` parameter and passes it to `coss(s32)` or `sins(s32)`, IDO 5.3 -O2 generates `andi a0, a1, 0xffff` (zero-extension) automatically:

```c
s16 func_foo(u8 arg0, s16 arg1) {
    f32 sp24 = (f32)((f64)(f32)coss(arg1) / 32768.0 * 30.0);  // andi a0,a1,0xffff generated
    f32 sp20 = (f32)((f64)(f32)sins(arg1) / 32768.0 * 30.0);
    ...
}
```

**Key rule**: Write `coss(arg1)` / `sins(arg1)` directly — do NOT write `arg1 & 0xFFFF` (produces 3 extra move/andi instructions) or `(u16)arg1` (same result as direct but unnecessary).
