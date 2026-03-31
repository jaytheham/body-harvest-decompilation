### Struct access vs array multiply for register allocation

When accessing a field in a struct array with a non-power-of-2 stride (e.g., 0xA = 10 bytes),
using `structArray[index].field` produces different register allocation than
`s16Array[index * 5]`, even though both generate the same multiply-by-10 byte offset.

The struct form allows IDO to reuse the intermediate register in the multiply chain
(`sll t8,t8,0x1`), while the array-multiply form allocates a new register
(`sll t9,t8,0x1`), shifting all subsequent temp registers by one.

#### Example (func_8010F5D8_11E588)

```c
// WRONG — generates sll t9,t8,0x1 (new register), shifts all t-regs by 1:
extern s16 D_8014076A_14F71A[];
D_8014076A_14F71A[temp_v0 * 5]

// CORRECT — generates sll t8,t8,0x1 (reuses register), matching target:
extern WeaponSpecEntry D_80140768_14F718[]; // WeaponSpecEntry size = 0xA
D_80140768_14F718[temp_v0].unk2
```

When you see a symbol at an offset within a known struct array, always prefer
struct member access over raw array indexing with a manual stride multiplier.
