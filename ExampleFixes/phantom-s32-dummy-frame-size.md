### Phantom `s32 dummy` for correct frame size without named pointer

**Frame size formula** (direct array access, no named pointer, baseline frame 0x20):
- 1 dummy: 0x20 → 0x28  (logical 0x24 rounds up to 0x28)
- 2 dummies: 0x20 → 0x28 (logical 0x28, already aligned)
- 3 dummies: 0x20 → 0x30 (logical 0x2C rounds up to 0x30)
- 4 dummies: 0x20 → 0x30 (logical 0x30, already aligned)

**Frame size formula with an `f32` local (baseline frame 0x28, f32 at sp+0x20):**
- 1 dummy (before f32): f32 moves from sp+0x20 → sp+0x24, frame 0x28 → 0x28
- 2 dummies (before f32): f32 moves to sp+0x28, frame 0x28 → 0x30

The two dummies push the f32 local upward; each dummy takes an integer-zone slot below the float zone. Two dummies place the f32 at sp+0x28, requiring minimum sp+0x2C → aligned to 0x30.

Use 2 dummies when the target has an f32 at sp+0x24 AND frame 0x30, with `$ra` at sp+0x1C.
Wait — 1 dummy puts f32 at sp+0x24 with frame 0x28. To get frame 0x30 with f32 still at sp+0x24,
use **2 dummies** (1 real s32 dummy at 0x20 + 1 more dummy at 0x28 ... but a single pad does not generate the extra slot). Empirically found that declaring **2 s32 dummies before the f32** gives frame 0x30 with f32 at sp+0x24 (func_80014208_14E08):

```c
void func_80014208_14E08(s32 arg0, s16 arg1, s32 arg2) {
    s32 pad1;   /* not last, phantom slot at sp+0x20 */
    s32 pad2;   /* not last, phantom slot at sp+0x24(?) → pushes f32 up */
    f32 sp24;   /* live float at sp+0x24 with frame 0x30 */
    ...
}
```

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

---

### Phantom `s32 dummy` to push `s16 slot` from sp+0x26 to sp+0x22

When a function naturally places `s16 slot` at sp+0x26 (the top of the local area after `$ra` at sp+0x1C), but the target has it at sp+0x22, declare an unused `s32 dummy` FIRST followed by `s16 slot`:

```c
s32 dummy;  /* first declared → highest slot: sp+0x24-0x27 (phantom, never used) */
s16 slot;   /* second declared → next available: sp+0x22-0x23 ✓ */
```

IDO allocates local variables top-down: first declared = highest offset. The `s32 dummy` (first) takes the top 4-byte slot (sp+0x24-0x27), and `s16 slot` (second/last) lands at sp+0x22-0x23. No statement referencing `dummy` is needed.

This was needed in `func_800D3C88_E2C38` (6-arg struct-init function) where `slot = func_800C17B4_D0764(0xE, 1)` needed to spill at sp+0x22 before a second `jal` call.
