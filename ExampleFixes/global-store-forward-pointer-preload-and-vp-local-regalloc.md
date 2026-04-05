### Global store-then-readback preloads pointer register; named local blocks a0

Two interacting patterns appear when a function computes a base pointer and stores it to a global, then derives multiple other globals from it by reading the global back:

#### Pattern 1: Store-then-readback forces pointer preload (from `global-var-store-read-forces-pointer.md`)

When D_global is STORED and then IMMEDIATELY READ BACK for several subsequent assignments, IDO:
1. Pre-allocates a dedicated pointer register (a0, a1, ...) for D_global's address — adds `lui`+`addiu` preloaded BEFORE the critical-path computation (interleaved with a multiply chain, for example)
2. Performs the first store via that pointer register: `sw val,0(a0)` (1 instruction, not 2)
3. Store-forwards the register value for ALL subsequent reads of D_global

Net effect: +1 instruction total (2 extra for preload, -1 for the fused store), but the value stays in a temp register for all derived stores.

**Correct pattern (func_8000F368_FF68):**
```c
D_8005BB20 = (u8 *)&D_801CE710 - D_80031B84 * 0x22B00;
D_8005BB28 = (s32)D_8005BB20;            // read-back → store-forwarded
D_8005BB3C = (s32)(D_8005BB20 + 0x180); // read-back → store-forwarded
D_8005BB40 = (s32)(D_8005BB20 + 0x200); // etc.
D_8005BB2C = (Gfx *)(D_8005BB20 + 0x280);
D_8005BB30 = (Gfx *)(D_8005BB20 + 0xE380);
D_8005BB34 = (Vtx *)(D_8005BB20 + 0xF500);
D_8005BB38 = (s32)(D_8005BB20 + 0x1E280);
```

**Wrong alternatives (no pointer preload, base in $v1):**
```c
// Using explicit local var: u8 *base = expr; D_8005BB20 = base; ...
// Using inlined expr 8×:   D_8005BB20 = expr; D_8005BB28 = (s32)expr; ...
```
Both produce `subu v1,t7,t6` for the base and `lui at; sw v1,-0x44e0(at)` (2 instructions, no preload).

#### Pattern 2: Named pointer local claims an $a register, shifting D_global preload

When the function also accesses a struct array via a local pointer (`Vp *vp`), IDO allocates `vp` to an `$a` register (e.g., $a0). This shifts the D_global store-pointer preload to the NEXT available $a register ($a1), cascading all subsequent `$a` register allocations by one and breaking the match.

**Fix:** Remove the named local pointer. Assign directly to D_8005BB24 and use `((Vp *)D_8005BB24)->` for ALL field accesses. IDO's store-forwarding propagates D_8005BB24 to the FIRST dereference using the register value (matching `sh t9,0(t6)`), then naturally reloads for all subsequent ones.

```c
D_8005BB24 = (s32)&D_80031B60_32760[D_80031B84];
((Vp *)D_8005BB24)->vp.vscale[0] = D_80068084 * 2;   // store-forwarded, uses t6 directly
((Vp *)D_8005BB24)->vp.vscale[1] = (s16)(D_80068088 * 2);  // reloads D_8005BB24
((Vp *)D_8005BB24)->vp.vtrans[0] = (s16)(D_80068084 * 2);  // reloads D_8005BB24
((Vp *)D_8005BB24)->vp.vtrans[1] = (s16)(D_80068088 * 2);  // reloads D_8005BB24
```

With no named pointer, $a0 is free for the D_8005BB20 store-pointer preload, matching the target register layout exactly.
