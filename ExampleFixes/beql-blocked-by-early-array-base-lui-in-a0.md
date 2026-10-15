# Counter write alias preserves folded loads and the call delay slot

**Code change:** Use a **write alias** for the counter global to prevent address CSE. This converts the counter read from `lui + addiu + lbu 0(reg)` to `lui + fused lbu%lo(reg)`, and correctly places `sb counter+1` in the jal delay slot:

```c
// undefined_syms_auto.txt: D_80033C6C_W = 0x80033C6C;
// variables.us.h: extern u8 D_80033C6C_W;

if (D_80031CA4 != 3) {
    s8 temp_a0 = D_80033C5C_3485C[(s8)(D_80033C6C_3486C % 15)];
    D_80033C6C_W = D_80033C6C_3486C + 1;  // write alias prevents CSE
    func_80015C94_16894(temp_a0, 3);
}
```
