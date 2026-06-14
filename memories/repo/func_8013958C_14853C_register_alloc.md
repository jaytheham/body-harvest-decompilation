# func_8013958C_14853C Matching Notes

## Best closeness: 585 (from original 780)

## Remaining Issues
All remaining differences are **pure register allocation** - every instruction opcode, offset, and branch target matches. The register mapping is:
- Target a3 → Current t0 (D_80031474 base)
- Target a0 → Current v1 (loop offset)
- Target a1 → Current a2 (src pointer)
- Target a2 → Current a3 (weapon2)
- Target v1 → Current a0 (weapon1)
- Target t0 → Current a0 then v1 (loop end address)

## Key Finding: IDO treats incomplete array types differently for pointer casts
`extern u32 D_80031424[]` (incomplete array type) combined with `(u8 *)D_80031424` generates a **load** from the symbol address (treating it as a pointer variable), not an address computation.

Using `(s32)D_80031424` instead generates the correct `lui+addiu` address computation with `lw reg, offset(base)`.

## Two conflicting approaches:
1. **u8* variable type** (best closeness 585): Good register allocation (a3 for D_80031474, a1 for src, a2 for weapon2, t0 for loop end) but loads weapon data from D_80031450/D_80031454 directly.
2. **s32 variable type** (closeness 825): Correct struct access (base+0x2C offset) but register allocation is entirely shifted.

## What wasn't tried
- Using `register` keyword (likely ignored by -O2 per DecompHints)
- Running permuter tool
- Modifying the D_80031424 declaration site in variables.us.h (would affect other functions)
