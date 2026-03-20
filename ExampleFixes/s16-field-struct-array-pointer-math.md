### s16 field inside struct array — replace raw pointer math

When asm accesses a field at byte offset `N` within a struct of size `S` using `(&D_xxx)[specIndex * (S/2)]` (s16 array stride), and the struct is already typed (e.g. `AlienSpec` size 0x68), replace with a named field in the struct and use `D_arr[specIndex].fieldN`.

This recovers the exact t-register reuse where the final `sll tX, tX, 3` reuses the same register as the intermediate, avoiding the +1 register shift that manual pointer math causes.

Example: `(&D_802566BE)[specIndex * 0x34]` → add `s16 unk26` to AlienSpec at offset 0x26 → `D_80256698[specIndex].unk26`
