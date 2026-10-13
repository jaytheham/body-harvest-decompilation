# Interior viewport physical alias and IDO spill position

Matched `func_80071854_159914` in `src.us/overlay_gameplay/inside/158330.c`.

The viewport command uses the existing physical linker symbol `D_314D0`, rather than the cached CPU address `D_800314D0_320D0`. Declare the alias in `include/variables.us.h` and pass it directly to both `gSPViewport` calls. Applying `K0_TO_PHYS` to the CPU symbol emits a runtime mask and changes the command scheduling.

One reserved `s32 pad` local before the graphics macros moves the shared viewport-address spill from `sp+0x24` to the target `sp+0x20`, while retaining the `0xA8` frame. Removing it leaves only two incorrect stack offsets. Replacing the viewport macros with manual command stores also changes scheduling and frame size. The full ROM checksum verifies the alias and reservation together.
