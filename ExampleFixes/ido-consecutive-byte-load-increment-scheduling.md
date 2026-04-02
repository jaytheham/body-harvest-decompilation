### IDO -O2 fuses consecutive byte loads into offset-load + pointer-increment

When copying two bytes from consecutive memory addresses via a pointer increment pattern:

```c
s8 var_v1 = *arg0;        // lb v1, 0(a0)
arg0++;                    // addiu a0, a0, 1 
u8 temp_v0 = *(u8*)arg0;  // lbu v0, 0(a0)
```

IDO -O2 ALWAYS reorders these three operations as:

```asm
lb  v1, 0(a0)       ← load from original a0
lbu v0, 1(a0)       ← load from offset 1 of ORIGINAL a0 (HOISTED before addiu!)
addiu a0, a0, 1     ← increment AFTER both loads
```

This also causes the delay slot of a following `blez v1` to be filled with a
speculative `addiu t8, v0, -1` pre-computation if `v0 - 1` is used later.

**This optimization CANNOT be prevented via any C code variation**, including:
- `*arg0; arg0++; *(u8*)arg0`
- `*arg0++; *(u8*)arg0`
- `arg0++; arg0[-1]; *(u8*)arg0`
- `*(u8*)(arg0 = arg0 + 1)` (even explicit sequence points)
- `volatile` qualifier on the load
- `volatile` on the parameter type
- Different pointer types (`u8*`, `s8*`, `void*`)
- Intermediate pointer variables (`s8 *p = arg0 + 1; *p`)

IDO treats all forms as semantically equivalent when the loaded addresses are
provably consecutive, and always chooses the `lbu offset(original); addiu; (no
second lbu)` form as the "canonical" output of the pre-increment pattern.

**Function with this pattern**: `func_8000A43C_B03C` (ROM offset B03C)  
**Best achievable score**: 605 (exact match impossible without compiler changes)

**Key difference in the "matched" target**:
- Target: `addiu a0,a0,1; lbu v0,0(a0); blez v1; NOP` — load AFTER increment, NOP delay slot
- Current: `lbu v0,1(a0); addiu a0,a0,1; blez v1; addiu t8,v0,-1` — hoisted load, filled delay slot

The NOP in the target suggests the original compilation had the load immediately
before the branch (causing a MIPS I load-use hazard shadow), while IDO in our
recompilation hoists the load to avoid this and speculatively fills the delay slot.

**Workaround for other fixes that ARE solvable**: 
To get `or a0, v0, zero` (move) vs `andi a0, v0, 0xff` in a delay slot when assigning  
from a u8 to a "working register", declare the target variable as `s32` rather than `u8`.
This prevents IDO from emitting the masking andi, matching the target's move instruction.
