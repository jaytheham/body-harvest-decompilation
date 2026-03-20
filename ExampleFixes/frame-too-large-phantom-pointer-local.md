### Frame too large: phantom stack slot from named pointer local

If the frame is 8 bytes too large and all register saves are uniformly shifted by 4 bytes (but no extra instruction writes to that phantom slot), a named local pointer variable like `AlienInstance *inst = &alienInstances[arg0]` is causing IDO to allocate a 4-byte stack home. The fix is to eliminate the named pointer and use the array access `alienInstances[arg0].field` directly throughout instead.

Example:
```c
// Wrong: inst gets a phantom stack slot → frame 0x30
AlienInstance *inst = &alienInstances[arg0];
inst->unkC = -1;

// Right: no pointer variable, direct access
alienInstances[arg0].unkC = -1;
```

This also applies to other named pointer locals (not just AlienInstance). For example, a local `Unk8014DD50 *ptr = &D_8014DD50[idx]` used only twice (once to read a field, once to check another field after several jals) will create a phantom slot too. In that case: use `D_8014DD50[idx].field` directly both times — IDO will still spill the computed pointer to the stack naturally across the jal calls, but without the extra phantom slot. This also correctly allocates `$a2` (not `$v1`) for the pointer register.
