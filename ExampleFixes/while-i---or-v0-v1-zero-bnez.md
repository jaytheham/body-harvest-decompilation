### `while (i--)` generates `or v0,v1,zero` at loop top + `bnez v1; v1--` delay slot

When IDO 5.3 -O2 compiles `while (i--) { arr[i].field = 0; }` with `i = N` (array count):

- Generates `li v1, N-1` (folds initial decrement into init)
- Precomputes pointer to last element `arr[N-1]` in a0
- Emits `or v0,v1,zero` at the **top** of the loop as a compiler artifact (tracking the result of `i--` expression)
- Emits `bnez v1, loop; addiu v1,v1,-1` at bottom (delay-slot decrement = fused post-decrement check)

For a function with **two s16 parameters** (a0, a1), the free argument registers (a2, a3) get assigned to i and ptr respectively. The loop counter gets a2 and the precomputed array pointer gets a3:
- `li a2, N-1` (folded i init)
- `lui/addiu a3, D_arrBase + (N-1)*stride` (= &arr[N-1])
- `or v1, a2, zero` at loop top (artifact)
- `bnez a2, loop; addiu a2, a2, -1` at bottom

**Key**: always use `arr[i]` style access (not explicit `ptr--`). The array-index form forces IDO to precompute the pointer into an argument register early, preventing that register from being used as a sign-extension temporary. An explicit ptr variable causes wrong register allocation (ptr ends up in v1 instead of a3).

**Array base address**: compute from `&arr[N-1] = known_last_element_addr` → `base = known_addr - (N-1)*stride`. Declare as an absolute linker symbol if the base isn't already declared (add `D_base = 0xAddress;` at the top of bh.ld SECTIONS).

**Example** (array of 0x19 elements):
```c
void func(...) {
    s32 i;
    i = 0x19;
    while (i--) {
        D_8015FAD0[i].unk2C = 0;
    }
}
```
Generates: `li v1,0x18` (= 0x19-1), `lui/addiu a0, D_8015FF50` (= &arr[0x18]), then loop with `or v0,v1,zero; sb; addiu a0,-stride; bnez v1; addiu v1,-1`.

**Example** with two s16 params (search for Nth occurrence in array):
```c
s32 func_801168E8_125898(s16 arg0, s16 arg1) {
    s32 count;
    s32 i;
    count = 0;
    i = 0x20;
    while (i--) {
        if (arg0 == D_800522C0[i].unkC) {
            if (arg1 == count) {
                return 1;
            }
            count++;
        }
    }
    return 0;
}
```
Generates: a0=arg0, a1=arg1, a2=i(=0x1F), a3=&D_800522C0[0x1F]=D_8005252C, v0=count, v1=artifact copy of i.
