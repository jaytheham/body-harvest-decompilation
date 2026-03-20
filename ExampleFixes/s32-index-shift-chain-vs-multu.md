### `s32` index variable forces shift chain vs `multu` for array access

When accessing `D_80048198[idx]` (stride 0x50 = 80 bytes), IDO 5.3 chooses between:

- **Shift chain** (`sll x, 2; addu x, x; sll x, 4`) — when a named `s32` variable is used as index
- **`multu` with constant** (`li reg, 0x50; multu idx, reg`) — when the index comes from an inline expression or from a `u8` variable, or when the same index is used more than once in separate array accesses

To get shift chain for a `D_80048198` lookup where the index is loaded from a struct pointer:

```c
s32 idx = ((u8 *) arg0)[8];   // explicit s32 named variable
D_80048198[D_80048198[idx].unk25].unk20 &= 0xFFFEFFFF;
D_80048198[idx].unk20 &= 0xDFBFFFFF;
```

Using `u8 idx` or an inline cast `(s32)((u8*)arg0)[8]` both generate `multu`. Only a named `s32` variable gives the shift chain.

Note: Even with `s32 idx`, if `D_80048198 + idx` appears in **two separate pointer assignments** (two named `Unk80048198 *` pointers), IDO may still use `multu`. The pure array-subscript form `D_80048198[idx]` with a single `s32 idx` variable is the most reliable way to get shift chains.
