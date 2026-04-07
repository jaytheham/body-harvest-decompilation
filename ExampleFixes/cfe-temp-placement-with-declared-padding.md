### cfe temp pointer at lowest local slot via declared padding variables

When a function has a cfe-temp pointer (uninitialized `s32 *sp28`) that the assembly reads from a specific stack offset, its placement can be controlled by declaring unused `s32` padding variables BEFORE it.

**Rule:** cfe temps go to the HIGHEST address of the local area. Declared locals fill from the HIGHEST downward (first declared = highest). So:
- 1st declared s32 → highest local slot  
- 2nd declared s32 → next lower slot
- 3rd declared s32 → next lower still
- cfe temp (undeclared) → the REMAINING lowest slot

**Example:** To get a cfe-temp pointer at `sp+0x28` in a 0x38 frame (4 local slots: sp+0x28, 0x2c, 0x30, 0x34):

```c
s32 sp34;   // → sp+0x34 (declared first = highest)
s32 sp30;   // → sp+0x30
s32 sp2C;   // → sp+0x2c
s32 *sp28;  // cfe temp pointer → sp+0x28 (remaining lowest slot)
```

The declared vars `sp34`, `sp30`, `sp2C` must NOT be the last declarations (put real variables after them). IDO keeps their slots because by the not-last rule unused declared variables are only eliminated if they are last.

**Key insight:** `s32 *sp28` without initialization is the cfe temp pattern. The value at sp+0x28 comes from the runtime stack state (set by a calling convention not visible in the function body).

---

### Alignment assign-first pattern produces delay-slot move

For the alignment code `beqz v1, ALIGNED; delay: move a1, v0` pattern:

Use **assign first, then conditional override**:
```c
var_a1 = var_v0;           // ← generates the delay slot "move a1, v0"
if (var_v0 & 0xF) {
    var_a1 = (var_v0 - (var_v0 & 0xF)) + 0x10;
}
```

NOT the if-else form:
```c
if (var_v0 & 0xF) {       // ← generates "lw a0, sp28" in delay slot (wrong)
    var_a1 = ...;
} else {
    var_a1 = var_v0;
}
```

---

### Switch case in-place modification produces addiu a1,a1,offset

When switch cases use a base value + offset for an inner call, write the **modification as in-place assignment** (`var_v0 += offset`) rather than inline (`var_v0 + offset`). This produces `addiu a1, a1, offset` (modifying a1 in place) instead of `move a3, v0; addiu a1, a3, offset`.

```c
// Correct: produces addiu a1,a1,0x3900
case 1:
    var_v0 += 0x3900;
    result = func(arg1, var_v0, size);
    break;

// Wrong: produces move a3,v0; addiu a1,a3,0x3900
case 1:
    result = func(arg1, var_v0 + 0x3900, size);
    break;
```
