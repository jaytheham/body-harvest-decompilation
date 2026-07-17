### func_800AE010_BCFC0 abs-pair with explicit neg_dx and variable declaration order

Pattern: computing abs(dx) with explicit `neg_dx` variable, abs(dz) with inline `-dz`, 
plus `(s16)(absDz + absDx)` inline instead of a `sum` variable.

#### Key insights

1. **Explicit `neg_dx` variable for the first abs (not the second)**:
   - First abs: use `s32 neg_dx = -dx; if (neg_dx < dx) { absDx = dx; } else { absDx = neg_dx; }`
   - Second abs: use inline `if (-dz < dz) { absDz = dz; } else { absDz = -dz; }`
   - Using explicit `neg_dx` for only the FIRST abs creates the correct register/stack layout.

2. **Variable declaration order matters** — the stack slot assignment (t0 for absDx, a3 for absDz)
   depends on the declaration order:
   ```c
   s16 dx;
   s16 dz;
   s32 neg_dx;    // explicit, for first abs only
   s32 absDz;     // ← comes BEFORE absDx (so a3 = absDz gets lower slot)
   s32 absDx;     // ← comes AFTER absDz (so t0 = absDx gets higher slot)
   ```
   Target stores: t0(absDx) at sp+0x20, a3(absDz) at sp+0x24.
   This requires `absDz` declared before `absDx`.

3. **`(s16)(absDz + absDx)` inline, NOT a `s16 sum` variable**:
   - Using `s16 sum = absDz + absDx;` allocates a stack slot for `sum`, shifting t0/a3.
   - Using `(s16)(absDz + absDx)` inline in the conditional avoids the extra slot.
   - The compiler CSEs the repeated expression, computing it once into `a0`.

4. **Return-based control flow (not if/else)**:
   - Using `if (sum < 0x190) { ... return; } if (...) { ... return; } ...`
   - NOT `if (...) { } else { }` — the else structure shifted stack layout differently.

5. **Direct array access (no `AlienInstance *` local)**:
   - Using `alienInstances[arg0].field` directly (not a local pointer) keeps the compiler's
     register allocation matching the target.

#### Working C code

```c
void func_800AE010_BCFC0(u8 arg0) {
    s16 dx;
    s16 dz;
    s32 neg_dx;
    s32 absDz;
    s32 absDx;

    dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
    dz = alienInstances[arg0].unk4 - D_80052B34->unk4;
    neg_dx = -dx;

    if (neg_dx < dx) {
        absDx = dx;
    } else {
        absDx = neg_dx;
    }

    if (-dz < dz) {
        absDz = dz;
    } else {
        absDz = -dz;
    }

    func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);

    if ((s16)(absDz + absDx) < 0x190) {
        alienInstances[arg0].unk14 = D_80052B34->unk0;
        alienInstances[arg0].unk18 = D_80052B34->unk4;
        if (alienInstances[arg0].unk12 < 0x140) {
            alienInstances[arg0].unk12 += 0x20;
        }
        alienInstances[arg0].unk20 |= 0x60;
        if ((s16)(absDz + absDx) < 0x96) {
            alienInstances[arg0].unk12 = 0x1C0;
            if ((s16)(absDz + absDx) < 0x28) {
                if (!(D_80052B34->unk0 & 1)) {
                    alienInstances[arg0].unkE += 0x222;
                } else {
                    alienInstances[arg0].unkE -= 0x222;
                }
                alienInstances[arg0].unk12 = 0x280;
            }
        }
        return;
    }
    if (alienInstances[arg0].unk12 > 0) {
        alienInstances[arg0].unk12 -= 8;
        return;
    }
    alienInstances[arg0].unk20 &= ~0x60;
}
```
