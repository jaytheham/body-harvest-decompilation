# Debug property lookup: entry placement and typed message table

Matched `func_80095100_A40B0` in `overlay_gameplay/outside/A40B0.c` with IDO 5.3 -O2 -mips2 -32. Function diff score: 0; full ROM checksum: OK.

Compute `entry = &D_8013CBC0_14BB70[arg0]` once before the property-range if/else chain. Repeating this assignment inside every branch produced almost identical logic, but changed index scheduling, the outgoing `drawText` argument/spill order, and a later short-circuit condition. Hoisting the assignment fixed all these differences, including the target's duplicated index shift near the final range check. The optimizer still emits branch-local address calculations where needed.

The remaining six register differences came from `D_80034574_35174[value * 2]`, a word-array alias into the English message table. Use the existing eight-byte `MessageEntry` structure instead: `D_800344B0_350B0[value + 24].name`. This places the index shift in the target temporary register and frees the correct register for the following switch dispatch. Move the existing type into `include/structs.us.h` and declare the table in `include/variables.us.h`.

Use `DebugPropertyValue` union fields and byte/halfword arrays for property reads. Reuse one `f32` local for the scaled floating value and the angle conversion; declaring another scoped float enlarges the frame. Remove both jump-table placeholders and the three double placeholders, letting the switches and inline double constants generate the original rodata.
