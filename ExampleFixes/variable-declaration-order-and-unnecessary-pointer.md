#### Variable Declaration Order Affects Stack Layout

In IDO 5.3, local variables are allocated in **reverse declaration order** — the first variable declared gets the highest stack offset, and the last declared gets the lowest. This directly affects which addresses the compiler assigns to each variable.

If your stack variable offsets don't match the target, try reordering the declarations so they appear in the reverse order of the desired layout.

**Example:** To get this target layout:
```
sp+0x34: sp34 (s32, 4 bytes)    → lowest offset, declared last
sp+0x3B: sp3B (u8, 1 byte)      → middle
sp+0x3C: buf (s16[2], 4 bytes)  → highest offset, declared first
```

Declare in this order:
```c
s16 buf[2];    // declared first → highest offset (0x3C)
u8 sp3B;       // declared second → middle offset (0x3B)
s32 sp34;      // declared last  → lowest offset (0x34)
```

**Wrong order** (e.g. `s16 buf[2]; s32 sp34; u8 sp3B;`) would place `buf` at 0x3C, `sp34` at 0x38, and `sp3B` at 0x37 — not matching the target.

#### Avoid Unnecessary Pointer Variables

Declaring a local pointer variable like `AlienInstance *inst = &alienInstances[arg0]` can increase the frame size by 8 bytes (0x48 vs 0x40 in this case), even though the compiler keeps the pointer in a register (`$s0`). 

Using `alienInstances[arg0]` directly (without an explicit pointer variable) produces the same register-based access but with a smaller stack frame. The compiler is smart enough to compute the address once and keep it in `$s0` regardless.
