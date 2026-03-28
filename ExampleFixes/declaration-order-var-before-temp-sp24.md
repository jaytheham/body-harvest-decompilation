### Declaration order: value variable BEFORE temp_a3 puts it at sp+0x24

When a function has two local s32 variables that both need to survive function calls — a `var_v1` (holds a computed result, in v1 register) and a `temp_a3` (holds arg1*4, in a3 register) — the correct declaration order is:

```c
s32 var_v1;   // declared FIRST → gets sp+0x24 (higher slot)
s32 temp_a3;  // declared SECOND → gets sp+0x1C (lower slot)
```

**Wrong** (var_v1 ends up at sp+0x20, temp_a3 at sp+0x1C):
```c
s32 temp_a3;  // first → sp+0x1C
s32 var_v1;   // second → sp+0x20 ✗ (should be sp+0x24)
```

**Correct** (var_v1 at sp+0x24, temp_a3 at sp+0x1C):
```c
s32 var_v1;   // first → sp+0x24 ✓
s32 temp_a3;  // second → sp+0x1C ✓
```

This was observed in `func_80115824_1247D4` (F9230.c). The frame is 0x28, ra is at sp+0x14, and the two locals end up 8 bytes apart (not 4 bytes) because of this allocation pattern. Reversing the declaration order fixes a score-8 diff where the only differences were `sw/lw v1, 0x20(sp)` vs `sw/lw v1, 0x24(sp)`.

**Key rule**: In IDO -O2, for the specific case where there are exactly 2 s32 locals that both need stack slots in a 0x28 frame, the FIRST declared variable gets the HIGHER stack address (closer to sp+0x24), the SECOND gets the LOWER address (near sp+0x1C). Declare the variable you want at sp+0x24 FIRST.
