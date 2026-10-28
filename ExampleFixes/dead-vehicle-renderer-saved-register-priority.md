## Incorrect ASM

`func_80101C14_110BC4` emitted the correct instructions and a `0x48` stack frame, but assigned the counter to `s5`, the vehicle-index cursor to `s6`, and the scale constant `0x100` to `s7`. The target uses `s6`, `s7`, and `s5`, respectively.

## Code changed

Before `func_800FFD28_10ECD8(vehicle)`, add the discarded comparison:

```c
if (type->unkC == D_80052B50.unk0 + (D_8005BB38 != 0)) {}
```

After writing the three scale components and before calling `func_800039D0_45D0`, add:

```c
if (vehicle->unk1E == 0x100) {}
```

Both comparisons disappear from the emitted code, but their placement changes IDO's allocation priorities and live ranges. Keep the existing graphics macros.

## Correct ASM

The scale-vector address remains in `s2`, the matrix-buffer address in `s3`, the vehicle-type pointer in `s4`, the scale constant moves to `s5`, the counter to `s6`, and the vehicle-index cursor to `s7`. All 184 instructions match, and `tools/make.ps1` reports `build/bh.us.z64: OK`.
