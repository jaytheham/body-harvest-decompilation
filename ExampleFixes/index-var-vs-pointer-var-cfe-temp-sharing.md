### Index variable vs pointer variable: cfe temp slot sharing for array-based structs

When a function computes a struct pointer like `&alienInstances[arg0->unk8]` and uses it across multiple function calls, choosing between a **pointer variable** (`AlienInstance *alien = &array[idx]`) and an **index variable** (`u8 idx = arg0->unk8` with inline `array[idx].field`) dramatically affects stack layout and register allocation.

**Problem**: A declared pointer variable (`AlienInstance *alien`) gets a user-declared stack slot at a high offset (e.g., sp+0x24). The compiler also generates a separate cfe temp (sp+0x18) for any other pointer it needs to spill (e.g., a wave instance pointer). These TWO slots can't merge, causing register allocation to shift by +1 across the entire function.

**Solution**: Instead of declaring a pointer variable, declare a **u8 index variable** and access the array inline:
```c
u8 alienIdx = arg0->unk8;
AlienInstance *parent;
s32 waveIndex;

osSyncPrintf(&str, alienInstances[alienIdx].unk3E);
if (alienInstances[alienIdx].specIndex == 0x19) {
    parent = alienInstances + alienInstances[alienIdx].unk25;
    waveIndex = alienInstances[alienIdx].unk3E;
    // ... alienInstances[alienIdx].unk3D etc.
```

**Why it works**:
1. The `u8 alienIdx` variable is register-only (no stack slot needed — it's the first declared but doesn't cross calls as a value).
2. The compiler automatically creates a **cfe temp** for the computed pointer `&alienInstances[alienIdx]`, placing it at the bottom of the stack (e.g., sp+0x18).
3. Later, when another pointer needs spilling (e.g., wave instance across a different call), the compiler **reuses the same cfe temp slot** since the alien pointer's lifetime has ended.
4. This saves 4 bytes of stack and corrects register allocation (no +1 shift).

**Critical**: The index variable MUST be a local (not `arg0->unk8` inline) because the compiler needs proof the index doesn't change across function calls. A local `u8 idx` is safe; `arg0->unk8` is a memory dereference that could be aliased, forcing the compiler to use `multu` for recomputation instead of caching.

**Declaration order matters**: Declare `alienIdx` FIRST (highest stack slot, but removed because it's register-only when NOT last), then the other declared locals. The `alienIdx` first + being the only non-stack variable means it doesn't phantom.
Actually, declaring `alienIdx` first with `parent` and `waveIndex` after gave the correct layout because alienIdx at the highest offset leaves room for parent and waveIndex at their correct positions.
