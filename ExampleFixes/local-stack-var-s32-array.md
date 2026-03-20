### Local stack variable initialized to 0 with reload after function call: use `s32 var[1]`

When the target assembly has:
- `sw $zero, 0x24($sp)` in a jal delay slot (local init = 0 spilled to stack)
- `lw $t6, 0x24($sp)` in a branch delay slot (reload after the call)
- `sll $t7, $t6, N; addu $s0, $t7, $base` (using the reloaded value for pointer math)
- `beq` (NOT `beql`) for the early-return branch

This pattern means IDO treated the local as stack-resident due to conservative aliasing, but `volatile s32` is wrong (produces `beql` + `lw ra` in delay slot instead of `beq` + `lw t6`).

**Fix**: Declare as a one-element array `s32 var[1]`. Arrays always go on the stack, but unlike `volatile`, they don't trigger the `beql` branch-likely optimization:

```c
s32 sp24[1];   // NOT s32 sp24;  (IDO folds)  NOT volatile s32 sp24;  (gets beql)
sp24[0] = 0;
if (func_call() != SENTINEL) {
    ptr = &arr[sp24[0] * 2];
    ...
}
```

Generates: `sw zero, 0x24(sp)` in jal delay slot, `beq` with `lw t6, 0x24(sp)` in its delay slot, then `sll/addu`. Score 0 – fully matched.
