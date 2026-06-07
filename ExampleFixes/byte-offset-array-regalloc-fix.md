### Byte-offset array access fixes register allocation for `specIndex * 0x68` computation

**Problem:** In `func_802D5F88_2556C8`, using `((u16 *)&D_8025668C)[alien->specIndex * 0x34]` generated `sll t1,t0,3` (register t1 for the final shift result), while the target had `sll t0,t0,3` (register t0). This cascaded into all subsequent temp register uses being shifted by 1 (t0→t1, t1→t2, etc.), causing multiple instructions to differ.

**Fix:** Replace the array-index expression with explicit byte-offset pointer arithmetic:
```c
// Before (register allocation mismatch):
((u16 *)&D_8025668C)[alien->specIndex * 0x34]

// After (matching):
*(u16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68)
```

**Why it works:** The byte-offset form `*(u16 *)((u8 *)&base + index * stride)` lets the compiler use the exact stride value (`0x68`) from the expression, while the array-index form `base[index * (stride/sizeof)]` requires the compiler to compute `index * (stride/sizeof)` and then multiply by `sizeof(type)` internally. With the byte-offset approach, IDO's register allocator reuses the same register (`t0`) for the entire multiply chain (`sll t0,t9,2; subu t0,t0,t9; sll t0,t0,2; addu t0,t0,t9; sll t0,t0,3`), matching the target exactly.

**When to use this:** When the target assembly shows a multiply chain computing `base + index * stride` and your generated code uses a different temp register for the final `sll`/`addu`, try replacing `((type *)&base)[index * (stride/sizeof)]` with `*(type *)((u8 *)&base + index * stride)`.
