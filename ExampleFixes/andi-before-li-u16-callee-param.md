### `andi` before `li` when passing u16 to callee expecting u16 (global flag + arg mask pattern)

When a small wrapper sets a global flag, calls a function with a masked 16-bit argument, then clears the flag, the target assembly shows `andi t2,a3,0xffff` BEFORE `li t3,1` (the constant for the global). To match this ordering:

1. Declare the 16-bit argument as `u16` (not `s32`)
2. Declare the callee's corresponding parameter as `u16` too
3. Pass the argument **directly** (no `& 0xFFFF` needed)

```c
// Wrong (s32 arg3 + & 0xFFFF → li comes before andi, score 410):
void func_wrapper(s16 a, s16 b, s16 c, s32 arg3, u8 arg4) {
    D_GlobalFlag = 1;
    func_inner(a, b, c, arg3 & 0xFFFF, (s32)arg4);
    D_GlobalFlag = 0;
}

// Correct (u16 arg3 + u16 callee param → andi before li, score 0):
void func_wrapper(s16 a, s16 b, s16 c, u16 arg3, u8 arg4) {
    D_GlobalFlag = 1;
    func_inner(a, b, c, arg3, (s32)arg4);  // func_inner 4th param must be u16
    D_GlobalFlag = 0;
}
```

If the callee expects `s32` but you use `u16` locally, IDO spills arg3 to stack and reloads with `lhu` (wrong instruction) and may also enlarge the stack frame. The callee must also be declared with `u16` for this to work.
