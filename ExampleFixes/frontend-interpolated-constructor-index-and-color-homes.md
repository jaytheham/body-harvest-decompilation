## incorrect ASM

In `func_80086C58_57108`, capturing strength before allocating and calculating the two payload addresses produced the correct instructions and registers, but assigned strength the first anonymous spill slot:

```asm
jal func_8008EDB4_5F264
sw s1,0x28(sp)
/* ... */
lw a2,0x28(sp)
```

## code changed

Declare the parent address union, particle pointer, and strength/motion union first, followed by `s16 parentIndex`, `s16 linkIdx`, `s16 ret`, `u8 localColors[4][3]`, and `s32 strength`. This preserves the index and color homes. Capture the strength after both address expressions have been defined:

```c
ret = func_80083C98_54148(0x95);
if (ret != -3) {
    parentIndex = D_800DE840[ret].unk4;
    parent.address = (u32)&D_800DE840[parentIndex];
    linkIdx = parent.node->unk4;
    particle = (FrontendInterpolatedParticleState *)&D_800DE840[ret].unk8;
    strength = arg3;
    work.value = strength;
    D_800DE840[ret].unk2 = work.value;
    /* ... */
}
```

Keep `strength` independent of `work.value`: the latter is subsequently reused for the motion pointer. After deriving that pointer, assign its word view back to `parent.address` to end the containing-node lifetime; later reuse `parent` for the shape payload. Typed union views retain all field accesses without byte-pointer arithmetic.

## correct ASM

```asm
andi s1,a3,0xffff
/* ... */
move a2,s1
/* ... */
jal func_8008EDB4_5F264
sw s1,0x20(sp)
/* ... */
lw a2,0x20(sp)
```

Both address expressions now precede the strength expression in the spill allocation order. All five strength accesses use `sp+0x20`; the return index remains at `sp+0x3E`, the link index at `sp+0x40`, and the colors at `sp+0x30` in the `0x50` frame. The function has zero assembly differences and the stock build reports `build/bh.us.z64: OK`.
