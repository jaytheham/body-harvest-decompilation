# Function-static cutscene state avoids an address cache and a stack home

America `func_802D563C_254D7C` matches with a function-static signed word actor index:

```c
s32 cutscene(void) {
    static s32 actorIndex;
    /* ... */
    actorIndex = spawnActor(0x12);
    if (actorIndex != 0xFF) {
        /* Set coordinates, clear and set flags, set animation and angles. */
        initializeActor(actorIndex);
        currentActor = actorIndex;
    }
}
```

An external word global plus an automatic index local reproduces most instructions but makes UOPT cache the global's address in `a2`. It also charges an unused four-byte local home, growing the frame from `0x30` to `0x38`. Volatile, signedness changes, a one-element external array, an unused parameter, and a scratch union do not reproduce the target.

The function-static scalar lets IDO promote the persistent value itself into `a0`. It emits the initial word store with `$at`, writes the cached value back in the initialization call's delay slot, and reloads the static value into `a0` afterward. No automatic index home is required. The three halfword coordinate locals then occupy `sp+0x2E`, `sp+0x2C`, and `sp+0x2A` in the exact `0x30` frame.

## BSS and constant ordering

The earlier America overlay BSS symbols still use linker-provided addresses in the range US `0x802E0E30..0x802E0E47`. Reserving those 24 bytes before the function-static definition places its actor index at US `0x802E0E48`. The prefix represents existing overlay state, not new game state. The shared source gets the corresponding PAL BSS placement from its linker layout.

Remove the placeholder switch table. Keep separate bodies for cases 1, 3, 7, and 9, even though they have identical logic, and use a shared zero-return epilogue. State 6 increments the state before resetting its timer; the other timer cases reset first.

The following constants belong after the generated switch table. Moving them into `254410_rodata.c`, with rodata segments at US `0x2604F0` and EU `0x261050`, restores the table at its original address. The 128 bytes of following constants are identical in both target ROMs. Keep the new unit in `shared_overlay_files.txt`.

Refreshing linker metadata also exposed two RSP microcode names used by C but absent from regenerated binary-data labels. Explicit aliases in `undefined_syms.us.txt` map them to the already-known microcode addresses. Preserve existing automatic aliases when refreshing linker-only metadata.

Validation: function diff score 0 and `tools/make.ps1` reports `build/bh.us.z64: OK`.
