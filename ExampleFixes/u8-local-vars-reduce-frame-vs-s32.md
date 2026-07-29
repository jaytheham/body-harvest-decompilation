### `u8` local variables reduce stack frame vs `s32` for masked values

When a function computes intermediate values that are explicitly masked to `u8` range
(e.g., `x = arg0 & 0xFF`), declaring them as `u8` instead of `s32` can reduce the
stack frame size.

#### Problem

With `s32 x, y, tileX, tileY` (four `s32` variables = 16 bytes declared), IDO allocates
a 0x20 frame even though the variables are kept in registers:

```c
void func(s32 arg0, s32 arg1, u8* arg2) {
    s32 x = arg0 & 0xFF;       // 4 bytes declared
    s32 y = arg1 & 0xFF;       // 4 bytes declared
    s32 tileX = ((x >> 1) - 1) & 0xFF;  // 4 bytes declared
    s32 tileY = (y >> 1) & 0xFF;        // 4 bytes declared
    u16 top[3];
    u16 bot[3];
    u8 c00 = D_80260700[(tileX << 7) + tileY];
    // ... (function body)
}
```
Produces: `addiu sp, sp, -0x20` (frame = 32 bytes)

#### Fix: declare as `u8`

Since the values are explicitly masked to 8-bit range, declare them as `u8`:

```c
void func(s32 arg0, s32 arg1, u8* arg2) {
    u8 x = arg0 & 0xFF;        // 1 byte declared
    u8 y = arg1 & 0xFF;        // 1 byte declared
    u8 tileX = ((x >> 1) - 1) & 0xFF;  // 1 byte declared
    u8 tileY = (y >> 1) & 0xFF;        // 1 byte declared
    u16 top[3];
    u16 bot[3];
    u8 c00 = D_80260700[(tileX << 7) + tileY];
    // ... (function body)
}
```
Produces: `addiu sp, sp, -0x18` (frame = 24 bytes) — matching the target!

#### Why it works

IDO allocates stack slots for declared local variables based on their declared type,
not just which ones end up in registers. Four `s32` variables add 16 bytes to the
declared total (inflating the frame), even if the compiler keeps them in registers
and never spills them to the stack. Changing them to `u8` reduces the declared total
by 12 bytes (from 16 to 4), shrinking the frame.

This is distinct from the parameter case (see `u8-param-byte-packing-reduces-stack-frame.md`)
because it applies to local variables, not function parameters. The key is that the
values really are u8-range (confirmed by `& 0xFF` masking), so `u8` is the correct type.

**Key insight:** Declaring intermediate variables with their semantically correct
smaller type (`u8` instead of `s32`) can reduce the stack frame by the full word-size
difference per variable, even if the compiler keeps them in registers.
