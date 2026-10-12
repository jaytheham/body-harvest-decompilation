# LFSR / Xorshift pattern with interleaved operations on struct array offsets

## Problem
Decompiling a function that performs an identical bit-manipulation (LFSR/Xorshift) operation on multiple values within a large struct array, where the operations are interleaved in the assembly for MIPS pipeline scheduling.

## Context
`func_802D6F4C_2B937C` in `src.us/overlay_level/siberia/2B7100.c`

## Pattern
The transformation applied to each value `x`:
```c
x = ((((x >> 12) | 0x10000) ^ (x >> 12)) << 12) ^ x;
```
This simplifies to forcing bit 28 to 1 (`x |= 0x10000000`), but the expanded form must be used to match the assembly.

## Key Techniques

### 1. Deriving struct array indices from raw byte offsets
The assembly accesses `buildingInstances + 0x680`, `buildingInstances + 0x788`, etc. Since `BuildingInstance` has size `0x18` and the `unk8` field is at offset `0x08`:
- `0x620` = `buildingInstances[0x41].unk8` (0x41 * 0x18 + 0x08 = 0x620)
- `0x680` = `buildingInstances[0x45].unk8` (0x45 * 0x18 + 0x08 = 0x680)
- `0x788` = `buildingInstances[0x50].unk8` (0x50 * 0x18 + 0x08 = 0x788)
- `0x818` = `buildingInstances[0x56].unk8` (0x56 * 0x18 + 0x08 = 0x818)

### 2. Matching interleaved instruction ordering
The compiler interleaves the four independent transformations to fill MIPS load-delay slots. To match:
- Use named temp variables matching the assembly register names (v1, a2, t0, t2, t6, t8, t9)
- Interleave the operations in the same order as the assembly
- Place stores between intermediate computations to match the exact scheduling
- Reuse temporary variable names to get the same register allocation

### 3. Key observation
This is not an actual LFSR despite appearances - the transformation always sets bit 28 to 1 (`x | 0x10000000`). The complex expression `((((x >> 12) | 0x10000) ^ (x >> 12)) << 12) ^ x` simplifies algebraically to just setting bit 28, but must be written in full form to match the assembly.
