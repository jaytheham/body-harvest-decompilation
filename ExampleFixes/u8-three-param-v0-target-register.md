### Three `u8` params: `move v0, t7` pre-branch preload for second-path comparison

When a function takes `(u8 arg0, u8 arg1, u8 arg2)` and has two conditional paths
(target < current = decreasing; target > current = increasing), the compiler
generates a characteristic pattern:

```asm
andi    t6, a0, 0xff         ; mask arg0 → t6
andi    t7, a1, 0xff         ; mask arg1 → t7
sw      a0, 0(sp)            ; save original a0 (u8 home area)
sw      a1, 4(sp)
sw      a2, 8(sp)
andi    t8, a2, 0xff         ; mask arg2 → t8
slt     at, t7, t6           ; compare BEFORE assignments
move    a2, t8               ; reassign arg regs to masked values
move    a1, t7
move    a0, t6
move    v0, t7               ; EXTRA copy of target into v0 (preload for 2nd path)
beqz    at, second_path
move    v1, t6               ; delay slot: current → v1 (for both paths)
```

Key register assignments:
- `a0` = current (for final `return a0` or result accumulation via `addu/subu`)
- `a1` = target (for `andi v0, a1, 0xff` returns)
- `a2` = step
- `v0` = target (preloaded for second-path `slt at, v1, v0` comparison)
- `v1` = current (via delay slot, used in sub/add computations and second-path slt)

The `move v0, t7` appears because:
1. The second path uses `slt at, v1, v0` (v0=target, v1=current)
2. v0 is free before the branch, so the compiler preloads v0=target
3. v1 is set in the beqz delay slot to current (used in BOTH paths)
4. Returns use `andi v0, a1, 0xff` (not v0 directly) since v1=current at return points

**Register allocation logic:**
- Early returns in first path: `return arg1` → `andi v0, a1, 0xff` (NOT `move v0, v1`)  
  because v1 = current (from delay slot), so v1 ≠ arg1 at that point
- Second path comparison at join point: `slt at, v1, v0` = current < target

**Best approximation C code** (score ~1558, not exactly matching):
```c
s32 func(u8 arg0, u8 arg1, u8 arg2) {
    s32 target = arg1;
    s32 step = arg2;
    s32 current = arg0;

    if (target < current) {
        if (current < step || (current - target) < step) {
            return arg1;       // ← use arg1 directly, not target
        }
        return current - step;
    } else if (current < target) {
        if ((0xFF - step) < current || (target - current) < step) {
            return arg1;       // ← use arg1 directly, not target
        }
        current = (current + step) & 0xFF;
    }
    return current;
}
```

**Remaining unresolved difference:** The `move v0, t7` pre-branch preload and
the `move a1, t7; move a0, t6` setup (putting masked values back into arg registers)
cannot be reliably achieved. The compiler assigns the second-path comparison
registers to different t-registers instead of v0/v1 when using all 3 s32 locals.
The issue: IDO generates `move v0, t7` as an optimization for the second-path 
slt-then-return pattern, but the exact trigger for this optimization is unknown.
