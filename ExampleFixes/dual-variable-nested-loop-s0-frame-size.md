### Dual-variable nested loop pattern forces correct frame size and s0 allocation

When m2c outputs a nested loop with **separate variables for the pre-increment and post-mask values** of each counter, using both variables in the C code is necessary to match the target's register allocation and stack frame size.

**Recognition signs in target assembly:**
- Outer loop initializes TWO registers to zero before the loop: `move t1, zero` AND `move v1, zero`
- Both are updated at the end of the outer iteration: `addiu t1, t1, 1; andi v1, t1, 0xff; ...; move t1, v1`
- Inner loop similarly has two registers: `move v0, zero; move a0, zero` before the inner loop
- `multu v0, a3` uses the pre-increment register, and `andi a0, v0, 0xff` produces the post-mask register
- The source address calculation uses `a0` (post-mask) while the destination uses `v0` (pre-increment via multu)
- Frame size 0x20 (indicating s0 is saved as callee-save for arg2)

**Anti-pattern (produces wrong frame size and register allocation):**
```c
// Single-variable approach (ignores m2c's dual-variable output)
s32 row, col;
for (row = 0; row < 0x13; row = (row + 1) & 0xFF) {
    for (col = 0; col < 0x13; col = (col + 1) & 0xFF) {
        ...
    }
}
```
Generates: frame 0x18 (no s0), `move t1, zero` only (no v1 init), wrong registers throughout.

**Fix (dual-variable m2c style):**
```c
// Dual-variable approach matching m2c output - separate pre/post increment vars
s32 row, col, nextRow, nextCol;
row = 0;
nextRow = 0;
do {
    col = 0;
    nextCol = 0;
    do {
        *(u16 *)(D_80151DD8 + row * 0x78 + col * 6) =
            ((u16 *)arg2)[(u16)(arg0 + nextCol + ((arg1 + nextRow) << 8))];
        nextCol = (col + 1) & 0xFF;
        col = nextCol;
    } while (nextCol < 0x13);
    nextRow = (row + 1) & 0xFF;
    row = nextRow;
} while (nextRow < 0x13);
```
Generates: frame 0x20 (with s0 saved for arg2), BOTH `move t1, zero` AND `move v1/t2, zero` before outer loop, BOTH `move v0, zero; move a0, zero` before inner loop.

**Why it works:**
- The extra variables `nextRow` and `nextCol` increase register pressure
- With the doubled counters, all 16 caller-saved registers are in use simultaneously, forcing `arg2` (the source pointer that must survive to the final function call) into the callee-save register `s0`
- This matches the target's characteristic `sw s0; or s0, a2, zero` prologue pattern

**Note:** Even with the dual-variable pattern, exact register naming may still differ (e.g., `t2` vs `v1` for nextRow, `t4` vs `ra` for the global base pointer). Getting an exact match may require the permuter for the register assignment details.

**Example function:** `func_800B4050_C3000` in `src.us/overlay_gameplay/outside/BF9C0.c` (score reduced from 3337 to 2775 with this pattern).
