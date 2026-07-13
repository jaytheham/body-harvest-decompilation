### u8 param generates `andi` + `sw a0, 0(sp)` for leaf functions

When a leaf function takes `u8 arg0` and uses it as a struct array index, IDO 5.3 generates:
1. `andi t6, a0, 0xff` — zero-extend u8 to s32 (from integer promotion)
2. `sw a0, 0(sp)` — save argument to caller's stack (argument home area)

If you use `s32 arg0` + `u8 idx = arg0` instead, the compiler generates:
1. `andi t6, a0, 0xff` — same essential instruction
2. But NO `sw a0, 0(sp)` — missing stack save

If you use `s16 arg0` + `(u8)arg0`, the compiler generates both `andi` and `sw a0, 0(sp)` BUT may swap the instruction order (`li <sizeof>` before `andi`), causing register allocation cascading differences.

**Fix**: Declare the parameter as `u8` (not `s32` or `s16`) when the target has both `andi a0, 0xff` and `sw a0, 0(sp)` as the first two instructions.

Example:
```c
// Target: andi t6, a0, 0xff; li a2, 0x50; sw a0, 0(sp); ...
s32 func(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    // ...
}
```

Using `u8` ensures arg0 is treated as a byte value, generating the `andi` (zero-extend) and `sw a0, 0(sp)` (save arg) with the correct instruction ordering.
