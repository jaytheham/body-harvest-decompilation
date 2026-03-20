#### `bgtzl` delay slot with a memory load

When you see `bgtzl v1, TARGET` with `lw tX, offset(reg)` in the delay slot, the assembler hoisted the `lw` from the **first instruction of the taken block** into the delay slot. The actual compiler IR had that load as the first thing in the taken branch body.

To reproduce this pattern: in the C code after the `if` guard (i.e. in the code that runs when the branch is taken), make sure the **memory load** operation (e.g., load of a flag field) appears **textually before** any register-only computation (e.g., a decrement using an already-loaded local variable).

Example: if the function decrements `unk10` and clears bits in `unk20`, write:
```c
inst->unk20 &= ~MASK;          // load unk20 first → assembler hoists lw into bgtzl delay slot
*(s32*)&inst->unk10 = unk10 - 1; // unk10 already in register, computed after
```
NOT:
```c
*(s32*)&inst->unk10 = unk10 - 1; // addiu goes into bgtz delay slot instead
inst->unk20 &= ~MASK;
```
