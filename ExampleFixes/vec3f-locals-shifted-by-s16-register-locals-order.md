### Address-taken Vec3f locals shift 4 bytes if s16 register-only locals are declared first

When a function has two address-taken `Vec3f` locals (passed by `&` to a helper) plus some `s16` locals that end up purely in registers, the **declaration order** of the `s16` locals relative to the `Vec3f`s controls the stack base of the `Vec3f`s.

**Observed pattern (score 58, only stack offsets differed):**
- Target: `spAC` at `sp+0xAC` (top of frame), `spA0` at `sp+0xA0`, 4-byte gap below at `sp+0x9C`.
- Current C (s16 locals declared BEFORE the Vec3fs): `spAC` at `sp+0xA8`, `spA0` at `sp+0x9C` — both 4 bytes too low, with a 4-byte gap above at `sp+0xB4`.

**Root cause:** The `s16` register-only locals declared before the `Vec3f`s reserve a 4-byte slot at the top of the local area (leaving the gap at `sp+0xB4`), pushing the `Vec3f`s down by 4.

**Fix — declare the `Vec3f`s first, then the `s16` locals:**

```c
// WRONG: s16 locals first → spAC at 0xA8, spA0 at 0x9C
s16 unitId;
s16 nextUnit;
Vec3f spAC;
Vec3f spA0;

// CORRECT: Vec3fs first → spAC at 0xAC, spA0 at 0xA0 (matches target)
Vec3f spAC;
Vec3f spA0;
s16 unitId;
s16 nextUnit;
```

This produced a full match (score 0) in `func_800C4274_D3224` with no other changes. The `s16` locals stay in registers either way — only the stack base of the address-taken locals moves.

**Related notes:**
- Adding an unused `s32 pad` after the Vec3fs does NOT shift them (the pad is eliminated since it is after the last used stack variable).
- Adding `s32 pad` *between* the two Vec3fs pushes the second Vec3f DOWN (worse), confirming the first-declared stack local anchors the top of the local area.
- See also `compiler-spill-slot-placement-frame-layout.md` for the general "declared locals fill from the highest address downward in declaration order" rule.
