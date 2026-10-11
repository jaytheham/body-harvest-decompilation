# Linked-command selector reloads

`func_8000807C_8C7C` in `src.us/core/53F0.c` matches using a structured infinite loop with nested switches and continue paths for linked commands. Preserve the intentional fall-through between outer cases.

The target reloads the first command opcode after either operand follows a link. An ordinary byte read lets IDO retain the first selector across iterations that only change the second operand. That removes two loads, adds a live register, and shifts allocation throughout the function. A narrowly scoped volatile byte read for the outer selector reproduces every instruction:

```c
s32 opcode;
while (1) {
    opcode = ((volatile u8 *)arg0)[0];
    switch (opcode) {
        /* Nested operand checks and linked-command continue paths. */
    }
    return;
}
```

Keep inner selectors as ordinary `arg1[0]` reads. Reusing the outer local for inner selectors changes allocation. Changing while to do/while or goto, changing the local to native int or an unsigned word, and changing the return type alone did not recover the missing reloads. The retained native-int return type describes the comparison results; it is not the fix for selector caching.

The volatile access is a code-generation constraint on this one read, not a claim that the command table is hardware memory. No whole-table or pointer declaration needs volatile qualification. The missing-value return on unrecognized opcodes preserves the target's unspecified return behavior.

Verified score zero and `build/bh.us.z64: OK` after formatting cleanup.

The neighboring `func_80007F60_8B60` already had an instruction-matching body. Enable it by removing its placeholder `jtbl_80037328_37F28`, then replace the restart label/goto with `while (1)` and `continue`, followed by a loop break for unrecognized opcodes. Unlike the two-operand checker, it needs no volatile read. Using `&buildingInstances[arg0[1]]` instead of pointer addition preserves the match. Its generated table and the existing late-data wrapper produce a full-ROM OK.

`func_80007DE0_89E0` likewise matches after removing `jtbl_800372C8_37EC8` and using the structured restart loop. Its `VehicleType.hitPoints` is already u16, so remove the old `*(u16 *)&` alias cast; `BuildingInstance.hitPoints` is already s8, so remove its s8 cast. Array element addresses for the vehicle, building, and alien locals preserve the exact instruction stream. Verified score zero and full-ROM OK after these cleanups.
