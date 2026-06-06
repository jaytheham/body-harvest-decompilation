## IDO bitfield XOR merge pattern (srl/ori/xor/sll/xor)

When IDO modifies a middle range of bits within a word, it may generate a circuitous `srl/ori/xor/sll/xor` sequence instead of a simple OR immediate:

```asm
lw   v0, offset(a0)
srl  v1, v0, shift
ori  t6, v1, value
xor  t7, t6, v1
sll  t8, t7, shift
xor  t9, t8, v0
sw   t9, offset(a0)
```

This pattern occurs when the compiler:
1. Extracts a field (shift right by the field's position)
2. Modifies it (OR with the value)
3. Finds changed bits via XOR
4. Shifts back to position
5. Applies via XOR with original word

**Simple `|= mask` or bitfield struct approaches do NOT match** - the compiler optimizes them differently.

**Matching C code** must explicitly replicate the shift/OR/XOR/shift/XOR sequence:

```c
void func(void) {
    u32 *ptr = (u32*)(base + offset);
    u32 val = *ptr;
    *ptr = ((((val >> shift) | value) ^ (val >> shift)) << shift) ^ val;
}
```

For example, to set bit 17 of a word (field at bits 12-23, setting bit 5):
```c
void func(void) {
    u32 *ptr = (u32*)((u8*)buildingInstances + 0x5D8);
    u32 val = *ptr;
    *ptr = ((((val >> 12) | 0x20) ^ (val >> 12)) << 12) ^ val;
}
```

**Key points:**
- Both the load and store must use the same address expression
- A local temp variable for the loaded value helps register allocation
- The `(val >> shift)` subexpression appears twice - the compiler CSEs it into one `srl`
- Neither `|= 0x20000` nor bitfield struct definitions produce matching assembly
