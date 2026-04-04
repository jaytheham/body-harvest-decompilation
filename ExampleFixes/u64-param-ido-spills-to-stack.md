# u64 / OSTime parameter: IDO spills to stack in mips2 mode

## Symptom
Function takes `OSTime` (u64) but should compile to just two `sw $a0/$a1` instructions with no stack frame. IDO instead generates extra `sw a0, 0(sp); sw a1, 4(sp)` spill instructions.

## Root Cause
IDO 5.3 in `-mips2 -32` mode always spills `u64` (OSTime, etc.) function parameters to the stack when any expression involving the parameter is evaluated as a 64-bit value. Even a simple global assignment `global_u64 = time` or `*(OSTime*)&someGlobal = time` triggers this.

Splitting with `(s32)(time >> 32)` avoids the spill but emits `__ull_rshift`, which conflicts with `1DDA0.s` in this project (that file defines most 64-bit helpers but NOT `__ull_rshift`).

## Solution
The original code used **two separate `s32` parameters** instead of a single `u64`/`OSTime`. The calling convention is identical: the high 32 bits are in `$a0` and the low 32 bits are in `$a1`.

Since the SDK header (`include/2.0I/PR/os.h`) declares the public prototype as `extern void osSetTime(OSTime)`, the CC_CHECK (GCC 11 gnu90) would reject a `(s32, s32)` definition as a "conflicting types" error. Fix:

1. Guard the SDK prototype in `os.h`:
   ```c
   #ifndef GAME_OSSETTIME_IMPL
   extern void osSetTime(OSTime);
   #endif
   ```

2. At the **top** of the implementing `.c` file, define the guard BEFORE `#include <ultra64.h>`:
   ```c
   #define GAME_OSSETTIME_IMPL
   #include <ultra64.h>
   ```

3. Define the function with two `s32` parameters:
   ```c
   void osSetTime(s32 arg0, s32 arg1) {
       D_8005BAEC = arg0;
       __osCurrentTime = arg1;
   }
   ```

This compiles to exactly:
```
lui  at, %hi(D_8005BAEC)
sw   a0, %lo(D_8005BAEC)(at)
lui  at, %hi(__osCurrentTime)
jr   ra
sw   a1, %lo(__osCurrentTime)(at)   [delay slot]
```
