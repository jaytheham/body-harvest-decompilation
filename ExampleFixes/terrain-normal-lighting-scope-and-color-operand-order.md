### Terrain normal lighting: scoped scale and color operand order

`func_800B2CF0_C1CA0` matches with a signed byte normal array and three float color factors. The height samples and RGB inputs/output are unsigned bytes. Five per-level RGB float entries replace byte-offset pointer arithmetic without changing the table bytes.

Keep the normalization scale in a block containing only the three normal assignments. A separate outer interpolation factor is needed for the target floating-point allocation; declaring both floats in the outer scope enlarges the frame. Declare the dot product and interpolation factor before the two slope floats, color factor array, and normal array to obtain slope homes at 0x2C/0x28, RGB factors at 0x1C/0x20/0x24, and normal bytes at 0x18..0x1A in the 0x38 frame.

Index the tint tables directly with `currentLevel - 1`. Naming an intermediate level changes the integer allocation and hoists its address load into the normal calculation. Write interpolation as `factor * (bright - base) + base`; the algebraically equivalent `base + factor * (bright - base)` reverses the table bases and floating-point operands.

The output multiplication must be `colorFactors[i] * (f32)rgb[i]`. Reversing these C operands changes floating-point allocation throughout the unsigned conversion sequences. Retain the `(u32)` conversion before storing each byte: the target includes the complete unsigned conversion sequence.

Verified with the function diff at zero and `tools/make.ps1` reporting `build/bh.us.z64: OK`, including all four matched scrolling callers.
