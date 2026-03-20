### Phantom `s32 dummy` for correct frame size without named pointer

When a function's target frame is 0x28 but without any named pointer locals IDO only generates a 0x20 frame (because only `ra`, `a3`, and one spill need saving), add a phantom `s32 dummy;` local variable:

```c
void func_foo(s32 arg0) {
    s16 target;
    s32 dummy;   /* ← phantom: never read/written, but forces 0x28 frame */

    /* all struct accesses via alienInstances[arg0].field directly */
}
```

The `s32 dummy` declaration causes IDO to reserve an extra 4-byte slot on the stack, inflating the frame from 0x20 to 0x28. No `(void)dummy;` statement is needed — the declaration alone is sufficient. This was needed in `func_8008D4A0_9C450` where removing an `AlienInstance *alien` pointer (which fixed register allocation) reduced the frame from 0x28 to 0x20.

**Key rule**: If your fix for register allocation involves removing a named pointer variable, and the frame shrinks as a side effect, add `s32 dummy;` to restore the original frame size.

This shape can preserve both branch delay-slot pointer arithmetic and the `lbu` before index increment/store ordering.
