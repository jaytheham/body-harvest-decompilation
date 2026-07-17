### Pre-initialize variables to force register allocation before GVN temp

**Problem:** In `func_800B84D0_C7480`, three named variables (`var_t0`, `var_t1`, `var_t2`) needed registers t0/t1/t2, while a compiler-generated GVN temporary (for a common subexpression base address) also needed a t-register. Without intervention, IDO allocated the GVN temp to t1, shifting var_t1→t2 and var_t2→t3, causing a cascade of register differences throughout the function.

**Fix:** Initialize the three variables to `0` before any expression that creates the GVN temp:

```c
// Before (register mismatch — GVN temp steals t1):
s32 var_t0, var_t1, var_t2;
xPosInTile = xPosition & 0xFF;
zPosInTile = zPosition & 0xFF;
if (...) {
    var_t0 = *(u16 *)(...) & 0x3F;  // GVN temp created here → t1
    var_t1 = ... - var_t0;           // → t2 (should be t1)
    var_t2 = ... - var_t0;           // → t3 (should be t2)
}

// After (matching — named vars claimed t0/t1/t2 before GVN temp):
s32 var_t0, var_t1, var_t2;
xPosInTile = xPosition & 0xFF;
zPosInTile = zPosition & 0xFF;
var_t0 = 0;  // pre-initialize → forces t0
var_t1 = 0;  // pre-initialize → forces t1
var_t2 = 0;  // pre-initialize → forces t2
if (...) {
    var_t0 = *(u16 *)(...) & 0x3F;  // GVN temp created here → t3 (free!)
    var_t1 = ... - var_t0;           // → t1 ✓
    var_t2 = ... - var_t0;           // → t2 ✓
}
```

**Why it works:** Pre-initializing the variables (even to a dead value like 0) causes the compiler to allocate registers for them before evaluating the GVN-generating expression. The initializations themselves are dead stores that the optimizer eliminates (producing no extra instructions), but they force the register allocator to commit to registers for the named variables first. The GVN common-subexpression temp then takes the next available t-register (t3 instead of t1).

**When to use this:** When:
1. Three or more named `s32` variables need consecutive t-registers (t0/t1/t2)
2. A GVN-eligible common subexpression is evaluated at the start of a basic block that would otherwise steal the middle t-register
3. The structural diff passes but registers are shifted by exactly one (t0→t0, t1→t2, t2→t3) or similar pattern

**Key insight:** The compiler allocates registers for local variables at their first *use* (not at declaration). By adding a dummy initialization use before the problematic expression, you can control allocation order.
