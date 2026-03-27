### Struct field init: pass-through args stored first, constant last → IDO reorders constant to first store

**Pattern:** When a function copies caller arguments into a newly-allocated struct AND also writes a constant field (e.g. `unk11 = 1`), writing the **args first** and the **constant last** in C source causes IDO to:

1. Allocate the lowest available t-registers (t2-t7) to the six argument loads from the stack.
2. Allocate t8 to the constant `1` (issued last, no memory latency).
3. **Reorder the constant store** (`sb t8, 0x11(v1)`) to **first** in the assembly output, even though it is last in the C source, because the constant has no load latency and can be issued immediately as a pipeline filler.

**Wrong** (constant first in C → t2 allocated to constant, t3+ for args):
```c
entry->unk11 = 1;       // constant FIRST → t2 = 1
entry->unk8 = arg0;     // t3 = arg0
entry->unkA = arg1;
...
entry->unk10 = arg5;
```
Resulting registers: `li t2, 1` then `lh t3, 0x2a(sp)` (arg0 into t3, constant into t2).

**Correct** (args first, constant last in C → t2 allocated to arg0, t8 for constant, constant store reordered first in assembly):
```c
entry->unk8 = arg0;     // arg0 FIRST → t2 = arg0
entry->unkA = arg1;     // t3 = arg1
entry->unkC = arg2;     // t4 = arg2
entry->unkE = arg3;     // t5 = arg3
entry->unkF = arg4;     // t6 = arg4
entry->unk10 = arg5;    // t7 = arg5
entry->unk11 = 1;       // constant LAST → t8 = 1
```
Resulting assembly: `lh t2, arg0; ... lb t7, arg5; li t8, 1; sb t8, 0x11(v1); sh t2, 8(v1); ...`
(IDO reorders the constant store `sb t8, 0x11(v1)` to **first** in the output, even though it was written last in C.)

**Stack frame sizing rule:** To get a 0x28 frame with a u8 spill at sp+0x1F, declare TWO 4-byte phantom slot variables (not last in declaration order) before the u8:
```c
Unk80154318Entry *entry;  // first → sp+0x24 (phantom)
s32 temp_v0;              // second → sp+0x20 (phantom)
u8 sp1F;                  // third/last → sp+0x1F (actual spill)
```

**Source example:** `func_800CD1F8_DC1A8` in `src.us/overlay_gameplay/outside/CFE30.c`
