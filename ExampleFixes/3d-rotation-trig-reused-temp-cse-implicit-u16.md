### 3D Euler-angle rotation: single reused trig temp, implicit u16 for sp5C/sp64, phantom intermediate

For 3D rotation functions calling coss/sins repeatedly (6+ calls), several IDO-specific patterns appear:

---

#### 1. Use ONE reused `s16 temp_s0` for ALL trig results

IDO allocates a **callee-saved register** ($s0) for a single temp variable that is reused for all coss/sins results. Each assignment overwrites the previous value, creating disjoint live ranges that IDO colors to the same register.

```c
// ✅ CORRECT - single reused temp → $s0 allocated as callee-saved
s16 temp_s0;

temp_s0 = coss(angle_z);
sp54 = ... temp_s0 ... ;  // uses coss result
temp_s0 = sins(angle_z);  // REUSE: overwrites temp_s0
sp50 = ... temp_s0 ... ;  // uses sins result
temp_s0 = coss(sp5C);     // REUSE again
...

// ❌ WRONG - separate named temps → each has its own live range, IDO spills instead of saving
s16 temp_s0;
s16 temp_s0_2;
s16 temp_s0_3;
...
```

---

#### 2. Omit `& 0xFFFF` for sp5C/sp64 stack variables passed to coss/sins

When an `s32` variable lives on the stack (sp5C, sp64) and is repeatedly passed to coss/sins (which take `u16`), IDO generates an optimized `lhu` from the lower-16-bit address and CSEs it into a (recycled) callee-saved register.

```c
// ✅ CORRECT - implicit u16 conversion → lhu s2,0x5e(sp) and andi a0,s2,0xffff
temp_s0 = coss(sp5C);     // NO mask needed
sp4C = ... sins(sp5C) ... ;  // NO mask
temp_s0 = sins(sp5C);
sp48 = ... coss(sp5C) ... ;  // NO mask

// ❌ WRONG - explicit masking → lw + andi, prevents lhu optimization and CSE
temp_s0 = coss(sp5C & 0xFFFF);
sp4C = ... sins(sp5C & 0xFFFF) ... ;
```

For the angle_z variable stored as `s32 temp_s2`, the `& 0xFFFF` IS needed at the assignment (`temp_s2 = arg2[2] & 0xFFFF`) and at each call (`coss(temp_s2 & 0xFFFF)`), because `temp_s2` is in a register (not stack) and the double-andi pattern is intended.

---

#### 3. Phantom `s32` intermediate for `lh v0; andi s2,v0` pattern

When IDO generates `lh s2,4(a2); andi t1,s2,0xffff; move s2,t1` (3 instructions, extra move) instead of `lh v0,4(a2); andi s2,v0,0xffff` (2 instructions), introduce a phantom intermediate variable:

```c
// Add this declaration between sp64 and sp5C to provide gap AND correct pattern:
s32 temp_s2_raw;

// In body: two statements
temp_s2_raw = arg2[2];          // lh t0,4(a2) → loads into temp_s2_raw's reg
temp_s2 = temp_s2_raw & 0xFFFF; // andi s2,t0,0xffff → different src/dst registers
// Result: only 2 instructions (not 3 with the extra move)
```

This also serves as the padding between sp64 (at 0x64) and sp5C (at 0x5c), maintaining the 4-byte gap needed in the stack layout.

---

#### 4. Float expression ordering for correct scheduler output

For subtraction forms (sp54): put the **negated term first**:
```c
// ✅ CORRECT - negated sins term first → compiler evaluates sins urgently after jal
sp54 = (f32)(-(((f64)(f32)sins(angle_z) / 32768.0) * (f64)arg0[2])
             + ((f64)arg0[1] * ((f64)(f32)temp_s0 / 32768.0)));
```

For addition forms (sp50): put the **`arg0[1]`-containing term first** when coss is inline:
```c
// ✅ CORRECT - arg0[1]*sins first → compiler saves volatile v0 (coss) immediately
sp50 = (f32)(((f64)arg0[1] * ((f64)(f32)temp_s0 / 32768.0))
             + (((f64)(f32)coss(angle_z) / 32768.0) * (f64)arg0[2]));
```

These orderings affect how IDO's instruction scheduler interleaves integer loads and float conversions, which in turn determines all float temporary register assignments throughout the function.

---

#### 5. Stack layout: sp64 at 0x64, sp5C at 0x5c

The Euler-rotation function stores angles at specific stack offsets to enable `lhu` from the lower 16 bits:
- `sp64 = arg2[0]` → stack offset 0x64 (lower 16 bits at 0x66 → `lhu s1,0x66(sp)`)
- `sp5C = -arg2[1]` → stack offset 0x5c (lower 16 bits at 0x5e → `lhu s2,0x5e(sp)`)

Achieve this by declaring variables in order: `sp64, temp_s2_raw, sp5C` (the phantom variable between sp64 and sp5C pushes sp5C to 0x5c).
