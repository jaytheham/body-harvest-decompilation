### Function param type s16 vs s32 causing unwanted sign extension

When a function calls another function declared with `s16` params, passing `s32` arguments,
IDO adds `sll/sra` sign-extension instructions to truncate the arguments before the call.
This sign extension can cascade, causing the compiler to use extra registers and change
register allocation for surrounding `sh` stores.

**Symptom**: Extra `sll rX, rY, 16` / `sra rX, rX, 16` pairs before `sh` stores and function
calls. Register allocation differs from target (e.g. arg stays in `$v1` instead of `$a1`).

**Fix**: Change the called function's declaration from `s16` params to `s32` params.
The function still truncates internally; the difference is the caller no longer sign-extends.

```c
// Before (causes sign extension):
s16 func_800B0F20_BFED0(s16, s16);

// After (no sign extension):
s16 func_800B0F20_BFED0(s32, s32);
```
