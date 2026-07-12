### Avoid declaring local pointer for global arrays to match cfe temp layout

When a function accesses a global array like `alienInstances[arg0]` repeatedly, avoid declaring a local pointer `AlienInstance *inst = &alienInstances[arg0]`. Instead, access the array inline each time (e.g., `alienInstances[arg0].field`).

**Problem**: Declaring `AlienInstance *inst` creates a user-level local variable stack slot for the pointer (e.g., at sp+0x18). This shifts subsequent variables by 4 bytes, often breaking the target's stack layout.

**Solution**: Access `alienInstances[arg0]` directly in every read/write. The compiler then:
- Creates a **cfe temporary** (compiler-generated, not user-declared) for the base address computation
- Places cfe temps at the *end* of the local variable area (highest addresses), matching the target layout
- Avoids consuming a user-level stack slot for the intermediate pointer

This also applies to other globals like `alienSpecs[specIndex]` — avoid declaring `AlienSpec *spec = &alienSpecs[specIndex]`.

**Example** (from `func_802D92A8_31D3F8`):

```c
// WRONG — creates extra stack slots, shifts layout:
void func(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];  // bad: takes a stack slot
    s32 mult;
    u8 specIndex;
    s16 speedLimit;
    // ...
    if (inst->unk4B == 0) { ... }
}

// RIGHT — no local pointer, cfe temp handles it:
void func(u8 arg0) {
    u8 specIndex;        // declared FIRST
    s32 mult;            // declared SECOND
    s16 speedLimit;      // declared THIRD
    
    specIndex = alienInstances[arg0].specIndex;  // direct array access
    // ...
    if (alienInstances[arg0].unk4B == 0) { ... }  // direct array access
}
```

**Key rule**: Only declare local variables for values that *wouldn't normally exist as cfe temps* (scalars like `u8`, `s32`, `s16`). Let the compiler generate temporaries for pointer computations from global arrays.

See also: `func_802DA910_2BCD40` for a nearly identical pattern.
