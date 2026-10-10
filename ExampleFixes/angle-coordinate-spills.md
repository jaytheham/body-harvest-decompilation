# Integer coordinates and packed halfword locals

Matched `func_800851C8_94178` with IDO 5.3. Compute both coordinate differences into s32 locals before passing them to the angle function. Explicit f32 locals changed conversion ordering and temporary registers; integer locals let IDO spill the converted arguments automatically. Reuse the X difference local for the final absolute angle difference after its last coordinate use.

Two consecutive s16 declarations (`sp46`, unused, then `sp44`, the saved angle) share a four-byte stack slot. A one- or two-element s16 array reserved more stack space and did not match. Full ROM verification returned OK.

## Separate coordinate locals and a saved angle

Matched `func_800A57E4_B4794` with IDO 5.3. Keeping the X and Z differences as separate `s32` locals before the angle call produced the target `v0`/`a1` subtraction results and floating-point conversion order. Inlining those expressions used additional temporary registers and reversed the conversion scheduling.

Declare the two coordinate locals before the two `s16` angle locals. This placed the saved angle difference at `sp+0x2E`, even though both coordinate locals stayed in registers. Declaring the angle difference first placed its spill at `sp+0x36`, with all other instructions matching.

Replace the two explicit `const f64` arrays containing `600.0` with inline double literals. IDO generated the required rodata, multiplication operand order, and floating-point register allocation. Full ROM verification returned `build/bh.us.z64: OK`.


### Opposite-facing angle helper

Siberia func_802DD408_2BF838 matches using the shared func_80084FE8_93F98 declaration layout and a ternary. Express the negative candidate as -(angle - alien->unk6 + 0x8000). Writing -0x8000 - (angle - alien->unk6) makes IDO reverse the inner subtraction and add the constant, changing instructions and temporary registers. Keep an unused s16 before the saved first angle to place it at sp+0x30. The threshold parameter is u16. Full ROM checksum verified OK.


## Repeated absolute-distance comparisons

In Siberia func_802D81C0_2BA5F0, using separate s32 result variables for the two identical max(-angle, angle) if/else blocks makes IDO keep the shared negation in v0 and each comparison result in v1. Reusing one result variable swaps v0/v1 even though instruction order is identical. The two result declarations precede the float local, preserving its target stack slot. Removing explicit masks from sins/coss arguments also preserves the argument normalization emitted for their u16 parameters.


In Siberia func_802DA4CC_2BC8FC, extracting chained node indices into separate locals fixes the initial register sequence. The first index remains s8, while the next two use s32 and precede the three s16 node/result locals. Those promoted indices replace two unused s32 padding declarations, retaining the exact stack slots and frame size; narrowing all three indices to s8 changes stack packing and the cached alien pointer slot.

## Mask rotation bits before shifting

In func_802D6CA0_2B90D0, (buildingInstances[buildingType].unk8 & 3) << 14 produces the same shift and final mask instructions as (buildingInstances[buildingType].unk8 << 14) & 0xFFFF, but assigns the raw building word to t1 instead of v1. This resolved the last two register differences. Keep the rotated coordinate as s32: narrowing it to s16 adds an mfc1/sh sequence instead of spilling the floating conversion directly with swc1. Reusing the same s16 trig local for the first cosine and second sine also preserves their shared stack slot.
