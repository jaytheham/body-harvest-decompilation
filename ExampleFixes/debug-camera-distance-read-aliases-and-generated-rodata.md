# Debug camera: repeated global reads and generated rodata

Matched `func_800E7C28_F6BD8` in `overlay_gameplay/outside/F6A50.c` with
IDO 5.3 -O2 -mips2 -32. Final function diff score: 0; full ROM checksum: OK.

Repeated reads of the external camera distance across `coss`/`sins` calls
made IDO retain its address in `s0`, emitting `lui; addiu; lw 0(s0)` rather
than the target's independent folded `lui; lw %lo(...)` accesses. This also
changed branch-delay scheduling and floating-point instruction order.

Three external read aliases, one for each coordinate calculation, resolve
to the same existing data object through linker expressions:

```ld
debugCameraDistanceX = D_8013E438_14D3E8;
debugCameraDistanceY = D_8013E438_14D3E8;
debugCameraDistanceZ = D_8013E438_14D3E8;
```

The original symbol remains the read/write object for button-driven distance
updates. Each calculation reads its respective alias. Relocatable linker
expressions keep all aliases attached to the object as code size changes.
This extends the existing separate-read/write-symbol CSE workaround.

A named local pointer also restored folded loads, but indirect expressions
changed floating-point temporary allocation and instruction scheduling.
Volatile declarations, a single read alias, native `int`, and a struct field
did not reproduce the complete target.

Replace the three `10000.0` double placeholders with inline literals to
reproduce the target's floating-point register sequence. Inline both format
strings as well. Delete the unused `0.0` placeholder: leaving it defined
places eight extra bytes before the generated strings and constants.
Check the full ROM checksum, since instruction similarity alone cannot
validate rodata placement.
