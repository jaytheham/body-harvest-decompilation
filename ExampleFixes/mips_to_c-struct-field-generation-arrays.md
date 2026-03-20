### mips_to_c struct field generation for simple arrays

When mips_to_c sees stores/loads at sequential offsets (e.g., +0x0, +0x2, +0x4), it may generate struct-like field accesses even when the symbol is actually a simple array:

**mips_to_c output:**

```c
D_80048140.unk0 = 0;
D_80048140.unk2 = 0;
D_80048140.unk4 = -0x8000;
```

**Actual declaration:**

```c
extern s16 D_80048140[];  // Not a struct, just an array
```

**Fix - convert offsets to array indices:**

```c
D_80048140[0] = 0;      // offset 0x0 / sizeof(s16) = index 0
D_80048140[1] = 0;      // offset 0x2 / sizeof(s16) = index 1
D_80048140[2] = -0x8000; // offset 0x4 / sizeof(s16) = index 2
```

The conversion rule: **array_index = byte_offset / sizeof(element_type)**

- For `s16[]` or `u16[]`: divide offset by 2
- For `s32[]` or `u32[]`: divide offset by 4
- For `s64[]` or `u64[]`: divide offset by 8

This pattern is common for lookup tables, configuration arrays, and state buffers that are initialized with specific values at known indices.
