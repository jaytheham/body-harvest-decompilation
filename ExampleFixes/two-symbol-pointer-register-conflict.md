### Register conflict: two global symbols competing for $a1

When a function has a backwards-search loop starting at symbol A (e.g. `D_801494B4 = D_80149478[15]`) AND a second loop/store accessing array B (`D_80149478[v1]`), IDO pre-loads the address of symbol B (the array base) into a register at function entry, conflicting with the first loop's pointer wanting to use the same register ($a1).

**Pattern observed in func_8007622C_851DC_851DC (missions.c):**

- First loop: pointer starts at `D_801494B4` (= `D_80149478[15]`), decrements through the 16-element array
- Second loop + store: accesses `D_80149478[v1]` directly

**What the target generates:**
- First loop: ptr in `$a1`, loaded from `D_801494B4`s address
- Second loop: freshly loads `&D_80149478` into `$a1` (rematerialization)
- Store: reloads `&D_80149478` into `$a1` again

**What IDO generates instead:**
- Pre-loads `D_80149478` base address into `$v0` (or `$a2`) at function entry
- First loop: pointer ends up in `$v0` (wrong, should be `$a1`)
- All register assignments for ptr/v0 are swapped from target

**Attempts tried (all failed):**
- `D_80149478[v1]` array index (strength-reduces both loops into ptr-based, wrong loop structure)
- Explicit `s32 *ptr` for first loop only, `D_80149478[v1]` for second (ptr→$a3 due to D_80149478 preload)
- `(&D_801494B4)[v1-15]` arithmetic to avoid D_80149478 symbol reference (IDO applies -0x3c offset, doesn't fold to clean base+sll pattern)
- Reusing ptr variable: `ptr = &D_801494B4;` then `ptr = D_80149478;` (still strength-reduces second loop, wrong instruction pattern)
- Declaration order variations, void vs s32 return type
- `while (v1--)` vs `while (v1-- != 0)` (fixes `sltu` issue for second loop)

**Root cause:** IDO's global value-numbering/address-allocation pass reserves $a1 for D_80149478 array base before the function begins, preventing the first loop's pointer from using $a1.

**Status:** NON_MATCHING. The C code is semantically correct; register allocation cannot be fixed without a way to prevent IDO from pre-loading `D_80149478` base before the first loop.
