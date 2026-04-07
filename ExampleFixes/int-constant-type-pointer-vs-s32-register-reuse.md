# Integer constant type: pointer vs s32 prevents register reuse

## Problem

When assigning the same integer constant `1` to two globals of different types
(e.g. `s16` and `OSThread *`), IDO cannot share the register and emits an extra
`li`:

```asm
li  t6, 1
sh  t6, D_800476A2    ; s16 store
...
li  t7, 1             ; EXTRA reload – different type
sw  t7, __osActiveQueue2
```

Target expected:

```asm
li  a2, 1
sh  a2, D_800476A2
...
sw  a2, __osActiveQueue2  ; same register reused
```

## Root cause

From DecompHints: "constants have implicit types; an unsigned 1 differs from a
signed 1, and makes the compiler unable to use the same register for both."

A pointer constant `(OSThread *)1` is treated as unsigned/pointer by IDO, while
a bare `1` or `s32` assignment is treated as signed integer.  Because the two
constants have different implicit types IDO allocates separate registers.

## Fix

If the global variable is used as a pointer in most places but the compiler
needs to assign an integer constant here, declare the variable as `s32` in
`variables.us.h`.  The matched functions that read/write it as a pointer will
still generate identical assembly because pointer ↔ integer conversions are
no-ops on 32-bit MIPS.

```c
// variables.us.h: change from
extern OSThread *__osActiveQueue2;
// to
extern s32 __osActiveQueue2;
```

Then write the assignment without a cast:

```c
D_800476A2 = 1;
__osActiveQueue2 = 1;   // same signed-integer constant → register reused
```

## Occurred in

`func_80001424_2024` (ROM 0x2024) – `src.us/core/1050.c`
