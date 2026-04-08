### gDX macro _g variables produce block-scoped stack slots between explicit locals

The N64 GFX macros (gDPPipeSync, gDPSetPrimColor, gSPMatrix, gDPSetCombineMode, etc.) expand to `{Gfx *_g = (Gfx *)(pkt); _g->words.w0 = ...; _g->words.w1 = ...;}`. These block-scoped `_g` variables get their own stack slots allocated by IDO 5.3.

**Stack layout rule:** The block-scoped `_g` slots appear BETWEEN the explicit function-scope local variable groups, based on where in the function body the macros are called.

**Example:** A function with `Unk80052B40 sp60, sp58;` (explicitly declared) and 9 macro calls:
- Macros called before `sp3C` assignment → their `_g` slots appear between sp58 and sp3C in the stack
- 6 macros between the struct copies and gDPSetPrimColor → 6 × 4 bytes = 24-byte gap at addresses 0x40-0x57
- 3 macros (gDPSetPrimColor, gDPSetRenderMode, gDPPipeSync) that get their `_g` SPILLED → appear at 0x3C, 0x38, 0x34

**Key insight:** The 3 "spilled" macros are spilled by IDO because register pressure is high during complex computations (like the prim color alpha computation). The other 6 get register-allocated without spilling. The spill positions match the addresses that appear explicitly as save points in the target assembly (`sw v0, 0x3C/0x38/0x34(sp)`).

**Pattern:** Those `sw v0, 0xNN(sp)` saves in the assembly are NOT from explicitly declared `Gfx *sp3C` etc. variables — they're from macro internal `_g` variables being spilled to stack by IDO under register pressure. Do NOT declare explicit `Gfx *sp3C` variables for these; just use `gDPSetPrimColor(D_8005BB2C++, ...)` directly.

**Frame size calculation:** With `Unk80052B40 sp60, sp58` (each 8-byte aligned) + 9 macro `_g` slots (each 4 bytes), the frame layout is:
```
0x60: sp60 (8 bytes, including 2-byte padding)
0x58: sp58 (8 bytes)
0x40-0x57: 6 non-spilled _g slots (24 bytes, addresses reserved but no assembly access)
0x3C: gDPSetPrimColor _g (spilled: sw v0, 0x3c(sp))
0x38: gDPSetRenderMode _g (spilled: sw v0, 0x38(sp))
0x34: gDPPipeSync _g (spilled: sw v0, 0x34(sp))
```
Frame = 0x68 bytes.
