### Regalloc t-register cyclic shift: move `result = 1` after arg stores

When a block assigns a constant (like `result = 1`) and then stores function arguments to struct fields, and the generated assembly is correct but t-registers are cyclically shifted (e.g. t3/t4/t5 → t4/t5/t3), moving `result = 1` to **after** the argument stores fixes the allocation. IDO pre-loads the memory-backed argument values (hiding load latency) first, giving them the lowest free t-registers, then assigns the constant last. If `result = 1` appears before the arg stores in C, IDO schedules the `li 1` first (low register), causing the cyclic shift.

```c
// Wrong (result = 1 before arg stores → t3=1, t4=arg2, t5=arg1):
alien->unk20 |= 0x40001000;
alien->unk36 = 0;
result = 1;
alien->unk10 = (s16) arg2;
alien->unk2C = (s16) arg1;

// Correct (result = 1 after arg stores → t3=arg2, t4=arg1, t5=1):
alien->unk20 |= 0x40001000;
alien->unk36 = 0;
alien->unk10 = (s16) arg2;
alien->unk2C = (s16) arg1;
result = 1;
```

IDO reorders the `sw result` to appear before the `sh` stores in the output anyway (store-store reordering for non-aliasing addresses), so the final assembly store order matches the target despite the source order change.
### Load-dependent store reordering: put ptr-field assignment first, zero-stores after

When a struct has two fields set to 0 and one field set to a value loaded from a
pointer (e.g. `D_80052B48.unk0 = D_80052B2C->unk36; D_80052B48.unk2 = 0; D_80052B48.unk4 = 0;`),
and the target assembly stores in order `unk2=0, unk4=0, unk0=ptr->field` (zeros first, loaded value last):

- Write the pointer-field store FIRST in C, then the zero stores.
- Do NOT use a named temp variable (e.g. `s16 unk36 = ...`) — this causes v0 to
  be used instead of a t-register (t7), and also shifts all arithmetic temporaries.
- IDO's scheduler moves the independent zero stores before the load-dependent store,
  producing the correct assembly store order automatically.
- Without the named temp, IDO uses the register immediately after the pointer's
  register (e.g., pointer in t6 → value in t7) instead of v0.

```c
// Wrong: named temp causes v0 register for unk36, wrong arithmetic register chain
s16 unk36 = D_80052B2C->unk36;
D_80052B48.unk2 = 0;
D_80052B48.unk4 = 0;
D_80052B48.unk0 = unk36;

// Correct: inline, pointer-field first → IDO reorders stores, uses t7 for value
D_80052B48.unk0 = D_80052B2C->unk36;
D_80052B48.unk2 = 0;
D_80052B48.unk4 = 0;
```