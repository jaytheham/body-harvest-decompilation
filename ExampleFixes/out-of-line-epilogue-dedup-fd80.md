# Out-of-line epilogue dedup across segment boundary

## Symptom
- Function body matches instruction-for-instruction, but diff shows many `i` relocation mismatches with a consistent `+0x10` shift on `jal` targets and nearby function symbol references.

## Cause
- A function ending in an infinite loop (`for (;;);`) can emit its restore epilogue out-of-line at the next segment start.
- If a separate standalone placeholder function is also kept for that same epilogue location, both stubs are emitted, shifting all following symbols.

## Fix pattern
- Keep only one source of the epilogue bytes.
- In this case (`func_8000EFB8_FBB8`), compiling the C function already emitted the FD80 restore stub, so the standalone `func_8000F180_FD80` placeholder in `FD80.c` had to be removed.

## Observed in
- `func_8000EFB8_FBB8` (core/FB00.c)
