### `u8` arg used directly as shift multiplier → declare as `s32`

When the function entry assembly uses a register argument **directly** in shift/multiply chains (`sll t7,a2,2; addu t7,t7,a2; sll t7,t7,4`) without first doing a `sw aX; lbu tX,+3` spill-and-reload, the parameter should be declared as `s32` (not `u8`). The `u8` type causes IDO to spill the register to the stack and reload as a byte before using it for arithmetic.

This primarily applies when the parameter is used as a **struct array index** (e.g. for `alienInstances[arg2].field`). The `s32` declaration lets IDO use the register directly, matching the target's unspilled shift sequence and avoiding 3-4 extra instructions at function entry.

When that same parameter is later passed to a callee that expects `u8`, IDO generates `lbu a0, stackslot+3(sp)` to reload the low byte from the 32-bit stack save — this is correct and matches the target.
