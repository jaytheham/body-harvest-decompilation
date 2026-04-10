### Time-diff unified join: structural conflict between frame layout and register allocation

**Problem Pattern:**

A function with a 3-way if-else chain to compute a time difference (wrapped subtraction with overflow handling), followed by a single `if (max < diff) { max = diff; result = i; }` comparison. The target generates this with a unified join (all 3 branches flow to exactly ONE `slt at,a2,v1; beqzl at,skip; addiu s0,s0,1` comparison).

**The conflict:**

To get the correct unified join pattern in C, you need a named `s32 diff` variable:
```c
if (unc >= tv) { diff = unc - tv; }
else if (unc >= 0) { diff = unc + MAX - tv; }
else { diff = MAX - tv - unc; }
if (sp44 < diff) { sp44 = diff; var_s6 = i; }
```

BUT: adding `s32 diff` (function-scope or block-scope) causes D_80031CD0's base to be cached in a new callee-saved register (the 8th register, s7), which inflates the frame from 0x50 to 0x58.

**Without `s32 diff` (3-chain nested-if):**

The nested-if with inline comparisons generates 3 SEPARATE update chains:
```c
if (unc >= tv) { if (sp44 < unc-tv) { sp44 = unc-tv; var_s6 = i; } }
else if (unc >= 0) { if (sp44 < unc+MAX-tv) { ... } }
else { if (sp44 < MAX-tv-unc) { ... } }
```
This generates ~11 extra instructions vs target (function is 10 instructions longer), causing ALL jal/branch addresses to be wrong.

**Without phantom vars (just `sp44` + ternary):**

The ternary approach `if (sp44 < TERNARY) { sp44 = TERNARY; }` generates correct register assignments (s4=const-1, s6=var_s6) AND frame 0x50, BUT:
- sp44 lands at sp+0x50 (OUTSIDE the frame! compiler reads from caller's stack)  
- OR sp44 at sp+0x4C (wrong, should be sp+0x44)
- The double-ternary evaluation generates 11+ extra instructions vs target (NOT a clean unified join)

**With phantom vars + any ternary or `s32 diff`:**

3 phantom s32 vars (to push sp44 to sp+0x44) COMBINED WITH any ternary or named diff = frame 0x58 (8th register triggered). D_80031CD0 caching uses the freed s7.

**Best achievable without permuter:**

3 phantom s32 declarations + nested-if 3-chain time-diff + common-join score loop:
- Frame 0x50 ✓, sp44 at sp+0x44 ✓, s3=var_s3 ✓
- 7 saved registers ✓
- Register permutation: s4=var_s6 (should be const-1), s5=const-1 (should be var_s5), s6=var_s5 (should be var_s6)
- Time-diff is 10 instructions longer → all jal addresses wrong
- Score: 3649 (with `s16 var_s5; s8 var_s6; s8 var_s3;` declaration order)

**Key insights:**

1. `beqzl` (branch-likely) squashes its delay slot when NOT taken. In the target, the delay slot `addiu s0,s0,1` is squashed during the UPDATE path, so `var_s6 = sign_extend(s0_original)` = the correct slot index. Without this pattern, the loop counter is incremented before the sign-extension, giving slot+1 instead of slot.

2. D_80031CD0 inline vs cached: with 7 callee-saved registers (no diff variable), the register pressure keeps D_80031CD0 computed inline per iteration (lui+addu+lb). With any extra callee-saved priority variable (s32 diff, ANY phantom s32 when ternary is present), D_80031CD0 caches in s7 → 8 registers → frame 0x58.

3. CFE temps from ternary go BELOW user-declared vars. Phantom s32 user vars correctly push sp44 to sp+0x44. But the ternary's CFE temps conflict with phantom vars' register priority, triggering the 8th register.

**Recommended tool:** The permuter (`.\tools\agent-permuter.ps1`) for this specific function.
