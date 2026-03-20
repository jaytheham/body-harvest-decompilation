### Compiler spill slot placement (frame layout)

When a register needs to be preserved across a `jal` call, IDO places it into a stack spill slot. The spill slot address depends on whether an explicit C local variable is declared:

- **With a declared local `AlienInstance *inst`**: IDO assigns it frame-8 (e.g., sp+0x18), leaving frame-4 for ra.
- **Without a declared local (direct field access like `alienInstances[arg0].field`)**: IDO creates a compiler-generated spill and places it at frame-4 (e.g., sp+0x1C), with ra at a lower slot (frame-12 = sp+0x14).

If the target has a spill at `sp+0x1C` (frame-4) with ra at `sp+0x14` (frame-12) and a gap at `sp+0x18`, try removing the intermediate pointer variable and accessing the array/fields directly each time. This shifts the spill-slot from frame-8 to frame-4.

Example that produces the target layout:

```c
void func(u8 arg0) {
    if (!(alienInstances[arg0].unk20 & 0x40000000)) {    // direct access, no local
        alienInstances[arg0].unk12 = 0xE0;
        func_A(arg0, &alienInstances[arg0].unkE);
    }
    if (alienInstances[arg0].unk47 & 8) {
        func_B(&alienInstances[arg0]);
    }
}
```

**cfe temps always go at the end (highest address) of the local area**: If a pointer is preserved across function calls via a stack slot (the `sw v0, offset(sp)` in the delay slot pattern), check whether it should be a *cfe-generated temporary* (no explicit declaration) or a *declared local variable*. Non-declared cfe temps are placed at the END (highest address) of the local variable area. Declared locals are placed in declaration order from lower to higher addresses. If the target has a gap between `ra` and the pointer slot (e.g., ra at sp+0x14, unused 4 bytes at sp+0x18, pointer at sp+0x1c), the pointer is a cfe temp — simply use `alienInstances[arg0].field` directly inline without declaring an `ai` variable. IDO will cache the pointer in a cfe temp at the end of the stack.

**When target has TWO consecutive pointer slots at end of frame (e.g., sp+0x18 and sp+0x1C), with NO gap from ra:** Both are cfe temps (no declarations needed for either). The first function call's pointer gets the LOWER slot and the second's gets the HIGHER slot. When there's also an intermediate index value (e.g., `unk25 = alien->unk25`) used to compute the second pointer, avoid declaring a local for that index — instead assign the second pointer directly: `AlienInstance *alien = &alienInstances[alienInstances[arg0].unk25]`. If you DO declare a local for the index (e.g., `s32 unk25`), it claims a v-register, pushes the second pointer into an a-register (wrong), and causes the frame to grow by 8 bytes due to 4-byte alignment rounding. The right pattern is: declare ONLY the second pointer (`AlienInstance *alien`), access the first pointer inline (`alienInstances[arg0]`), and let IDO generate both cfe temps from the expressions.

Stack variables are placed in "as declared" order - non-declared temporary variables are placed at end of stack.
