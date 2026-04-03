### Deferred-spill in-place s16 shift: get a-registers for address-taken locals without adding variables

When a function reads address-taken `s16` locals back after function calls and performs `>> 8` sign-extension on them for a final computation (e.g. squared distance), the register allocation depends critically on how those reads/writes are expressed.

#### Problem

Writing the computation inline (avoiding any extra variables) causes IDO to load the values into `t` (temp) registers, producing score ~160 register-only differences:
```c
// Generates lh t6/t0/t4 for sp1E/sp1A/sp1C — WRONG registers
return ((s16)(sp1E >> 8) - (s16)(sp1A >> 8)) * ((s16)(sp1E >> 8) - (s16)(sp1A >> 8)) +
       ((s16)(sp1C >> 8) - (s16)(sp18 >> 8)) * ((s16)(sp1C >> 8) - (s16)(sp18 >> 8));
```

#### Fix: in-place assignment using the same address-taken variable

Assign the shifted result BACK to the same address-taken stack variable before the final expression. IDO's **deferred-spill** optimization elides the `sh` write-back (since the stack slot is never read again), keeping the result in an `a`-register. The assignment ORDER determines which register each variable gets.

```c
// correct — in-place shifts, sp1C before sp1A to match register order
sp1E = (s16)(sp1E >> 8);   // → a1
sp1C = (s16)(sp1C >> 8);   // → a2  (assign sp1C BEFORE sp1A to reserve a2 for sp1C)
sp1A = (s16)(sp1A >> 8);   // → a3  (gets a3 since a2 is taken)
sp18 = (s16)(sp18 >> 8);   // → t0  (first t-register)
return (sp1E - sp1A) * (sp1E - sp1A) + (sp1C - sp18) * (sp1C - sp18);
```

This generates `lh a1/a3/a2` for sp1E/sp1A/sp1C and the final sign-extend writes result back to a1 for sp1E (same register), no `sh` store instructions, and frame stays at 0x20.

#### Key rules

1. Use **in-place assignment** `var = (s16)(var >> 8)` so IDO loads into register, transforms, and omits the store-back (deferred-spill).
2. The **declaration order** of the stack locals determines their stack addresses (first declared = highest address). Keep this unchanged.
3. The **assignment order** determines which `a`-register each local lands in after deferred-spill. Assign in the order that places `a1` first, then the variable that needs `a2`, then the one that needs `a3`.
4. No extra variables are needed — this avoids growing the stack frame.
5. The sign-extend result for the **first** variable in assignment order writes back to its own `a`-register (e.g., `sra a1, t7, 16`). Subsequent variables may write to a different `t`-register (e.g., `sra t5, t4, 16` for sp1A in a3).
