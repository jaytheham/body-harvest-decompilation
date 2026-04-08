### Phantom s32 locals inflate frame for gfx timing bar functions

**Context:** Functions that save Gfx* pointers before JAL calls (for deferred gDPFillRectangle fills), then use those pointers to write computed display list entries after div/mul.

**Pattern (debug_drawTimingGraphBars):**
- Frame target: 0x58 with sp30 at 0x30 and sp24 at 0x24
- Without phantom pads: frame = 0x30, sp30=0x24, sp24=0x20 (wrong offsets)
- With 9 phantom s32 pads before sp30, pad10, named lrxVal, sp24, var_a1, var_a2(LAST): frame = 0x58 ✓, sp30=0x30 ✓, sp24=0x24 ✓

**Declaration order for 0x58 frame, sp30=0x30, sp24=0x24:**
```c
s32 pad1; s32 pad2; ...s32 pad9;  // 9 phantom pads → slots 0x34-0x54
Gfx *sp30;                         // slot 0x30 ✓
s32 pad10;                         // slot 0x2C
s32 lrxVal;                        // slot 0x28 (USED variable between sp30/sp24)
Gfx *sp24;                         // slot 0x24 ✓
s32 var_a1;                        // slot 0x20
s32 var_a2;                        // LAST — no slot
```

**Key insight:** `lrxVal` MUST be declared between pad10 and sp24 (declared and USED, not phantom), otherwise the frame drops to 0x50. Having a USED variable between sp30 and sp24 in declaration order is what keeps the frame at 0x58.

**Loop pattern:** `do { gDPFillRectangle(D_8005BB2C++, var_a2, y0, var_a2, y1); var_a2 -= stride; } while (var_a1--)` generates the observed `bnez a1, loop; addiu a1,a1,-1` delay-slot pattern with extra moves (move a0,a1 / move v1,t5 / move v0,t0) in the loop body.
