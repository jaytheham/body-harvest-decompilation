### Declared struct pointer inflates frame size by 8 bytes

When a function accesses `D_80154318[arg]` fields many times and also uses a `u8 *base` sub-pointer (e.g., `(u8 *)&entry->unk8`) across `jal` calls, declaring `Unk80154318Entry *entry` as a local variable adds 8 bytes to the stack frame even though `entry` is placed in `s0`.

**Problem:** With both `entry` and `base` declared:
```c
Unk80154318Entry *entry;
u8 *base;
entry = &D_80154318[arg4];
base = (u8 *)&entry->unk8;
```
Frame = 0x38 (8 bytes too large). The declared `entry` reserves a stack slot even though it lives in `s0`.

**Fix:** Remove the `entry` declaration and access `D_80154318[arg4]` directly. IDO's CSE will cache the array base in `s0` as a cfe temp (no stack slot needed):
```c
u8 *base;
D_80154318[arg4].unk8 = arg0;
D_80154318[arg4].unkA = arg1;
base = (u8 *)&D_80154318[arg4].unk8;
base[6] = ...;
```
Frame = 0x30 (correct). The sub-pointer `base` is declared and spilled to the stack across `jal` calls, while the struct base pointer is a cfe temp in `s0` with no stack reservation.

**Key insight:** A declared pointer that the compiler places in a callee-saved register (`s0`) still reserves a stack slot, inflating the frame. An undeclared pointer that the compiler CSEs into `s0` as a cfe temp does NOT reserve a stack slot.
