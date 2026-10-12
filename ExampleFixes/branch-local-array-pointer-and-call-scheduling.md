### Rebind an indexed array pointer inside branches to fix call scheduling

`func_80137468_146418`, case `0xD0`, had exactly the target instructions, registers, and stack slots, but ten words differed because of scheduling. The successful shape is:

```c
alien = &alienInstances[arg0];
temp_v0 = func_80012778_13378(alien);
if (temp_v0 != 0) {
    alien = &alienInstances[arg0];
    /* Compute pitch, call the sound helper, and update the node. */
} else {
    alien = &alienInstances[arg0];
    /* Call the sound helper with pitch -1.0f. */
}
```

Keep both branch-local assignments. Reassigning the pointer once immediately after the lookup left the mismatch unchanged; reassigning it immediately before the sound calls made register allocation worse. Inside each branch, the assignments emit no extra instructions and fix both the coordinate-load order and the outgoing stack argument in the call's delay slot.

The n64-decomp-workbench scheduler guidance helped identify memory disambiguation as the relevant mechanism. A diagnostic full project build with IDO `-K -Wa,-R` showed `.alias $16,$sp` after the lookup in the failing version. The scheduler consequently gave the coordinate loads dependencies on outgoing stack stores. Token-identical source-line regrouping did not change the result. The branch-local indexed-array assignments resolved the scheduling differences in the normal project build.

Verified with function diff score 0 and `build/bh.us.z64: OK`. Diagnostic compiler flags were removed before verification.
