# Integer coordinates and packed halfword locals

Matched `func_800851C8_94178` with IDO 5.3. Compute both coordinate differences into s32 locals before passing them to the angle function. Explicit f32 locals changed conversion ordering and temporary registers; integer locals let IDO spill the converted arguments automatically. Reuse the X difference local for the final absolute angle difference after its last coordinate use.

Two consecutive s16 declarations (`sp46`, unused, then `sp44`, the saved angle) share a four-byte stack slot. A one- or two-element s16 array reserved more stack space and did not match. Full ROM verification returned OK.

## Separate coordinate locals and a saved angle

Matched `func_800A57E4_B4794` with IDO 5.3. Keeping the X and Z differences as separate `s32` locals before the angle call produced the target `v0`/`a1` subtraction results and floating-point conversion order. Inlining those expressions used additional temporary registers and reversed the conversion scheduling.

Declare the two coordinate locals before the two `s16` angle locals. This placed the saved angle difference at `sp+0x2E`, even though both coordinate locals stayed in registers. Declaring the angle difference first placed its spill at `sp+0x36`, with all other instructions matching.

Replace the two explicit `const f64` arrays containing `600.0` with inline double literals. IDO generated the required rodata, multiplication operand order, and floating-point register allocation. Full ROM verification returned `build/bh.us.z64: OK`.
