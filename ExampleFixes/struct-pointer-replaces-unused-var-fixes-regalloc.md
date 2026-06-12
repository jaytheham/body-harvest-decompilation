### Using a struct pointer (replacing an unused stack variable) to fix register allocation

When accessing structured data via raw byte array offsets like `*(s32*)&D_80158000[arg0 * 0x170 + 0x10]`, the compiler may produce suboptimal register allocation and instruction scheduling compared to the target.

If the data has a matching struct definition (e.g. `UnkF9230ShadowWalker` with `limbs[9]` of `UnkF9230ShadowLimb`), using proper struct access can fix register allocation and scheduling:

**Before** (closeness 620):
```c
s32 sp1C;
s32 sp20;

if (arg0 < 8 && D_80157FF0[arg0] == -1) {
    *arg1 = *(s32*)&D_80158000[arg0 * 0x170 + 0x10];
    *arg2 = *(s32*)&D_80158000[arg0 * 0x170 + 0x14];
    *arg3 = D_80158000[arg0 * 0x170 + 0x22];
}
```

**After** (closeness 0 - matched):
```c
s32 sp1C;
UnkF9230ShadowWalker *walker;   // replaces unused s32 sp20

if (arg0 < 8 && D_80157FF0[arg0] == -1) {
    walker = &((UnkF9230ShadowWalker *)D_80158000)[arg0];
    *arg1 = *(s32*)&walker->limbs[0].unk10;
    *arg2 = *(s32*)&walker->limbs[0].unk14;
    *arg3 = walker->limbs[0].unk22;
}
```

This worked because:
1. The struct pointer gave the compiler proper type information, changing register allocation to match the target.
2. The target used a single base pointer (`v0`) for all field accesses, and the struct pointer achieved the same effect.
3. Replacing the unused `s32 sp20` with the needed pointer kept the stack frame at the correct size (0x28).
