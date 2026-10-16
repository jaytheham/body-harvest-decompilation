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

Keep both branch-local assignments.  Inside each branch, the assignments emit no extra instructions and fix both the coordinate-load order and the outgoing stack argument in the call's delay slot.

The n64-decomp-workbench scheduler guidance helped identify memory disambiguation as the relevant mechanism. A diagnostic full project build with IDO `-K -Wa,-R` showed `.alias $16,$sp` after the lookup in the failing version. The scheduler consequently gave the coordinate loads dependencies on outgoing stack stores. The branch-local indexed-array assignments resolved the scheduling differences in the normal project build.

Verified with function diff score 0 and `build/bh.us.z64: OK`. Diagnostic compiler flags were removed before verification.

### HUD state reloads and local register lifetime

In func_800A1A18_B09C8, reloading the state separately inside both final update branches preserves the target's two loads and branch delay-slot scheduling. A shared reload after the branches lets IDO merge the loads and removes four instructions. Earlier state checks must also use the same explicit s16 local, reloaded after the sound call, to allocate v1 rather than an anonymous a1 temporary. Verified with diff score 0 and the full ROM checksum OK.

### America controller: eliminate the instance pointer for alias information

In `func_802DAEDC_25A61C`, the final effect call loaded X, stored X to a stack pair, then loaded Z. The target loads both coordinates before either store and delays both halfword stores until argument setup. Copying into named scalar coordinates fixes the ordering but changes their temporary registers.

Replacing the named `AlienInstance *alien` throughout the function with direct `alienInstances[arg0]` field accesses fixes the entire final effect sequence, including the outgoing zero argument. Keep an unused word in the pointer declaration's old slot to preserve stack placement. Rebinding that pointer only inside the effect branch was byte-inert. Array versus Vec2 syntax, first-member address casts, and comma expressions were also byte-inert for this problem.

The alias fix reduces the function diff from 407 to 65. Combining the countdown negation and scale into one expression reduces it to 20. The final fix is a u16 angle local followed by a halfword of padding, passing angle directly to sins without another explicit mask. Keeping the mask retains the wrong negative register and shifts the temporary-register cycle. Using a word angle loses the argument-register constraint; fully inlining the calculation loses the target argument copy. The halfword assignment supplies the narrowing at the right stage. All 474 instructions match and the complete ROM checksum passes.
