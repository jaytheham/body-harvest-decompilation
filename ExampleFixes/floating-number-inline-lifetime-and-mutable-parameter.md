# Floating numbers: inline lifetime and reuse the short parameter

`func_800CEE00_DDDB0` in `CFE30.c` matches with IDO 5.3 -O2 -mips2 -32.

Reuse the signed halfword number parameter while extracting thousands and hundreds. A separate mutable remainder local lets IDO reload the initial value after calls and loses the target s0 allocation. Retaining both a cached initial number and the mutable parameter introduces a halfword spill and expands the stack frame from 0x28 to 0x30. Using only the parameter reproduces the 0x28 frame and the target's repeated short truncations.

Write the lifetime store as `entry->unk2 = arg3 / 50 + 25`. A reusable quotient local delayed the first `mflo` and the division by 1000 until after entry-index calculations. Inlining the lifetime expression gives the target early `div` / `mflo` / second `div` sequence. Keep the decimal divisors as literals; named constant locals did not change this codegen.

Store the units digit into an s16 local before packing it with the tens digit. This emits the required sign-extension pair for the units value. Use a typed `FloatingNumberState` payload for RGB, packed digits, rise speed, and alpha, replacing raw byte offsets.

The target tests the already reduced number against 1000 when choosing its color, and uses that same reduced value for rise speed. Preserve this behavior even though comparing the original number might appear more useful. Inline the camera-heading global in the visibility call rather than caching it in a named short.

Validation: function diff score 0 and full ROM checksum `build/bh.us.z64: OK`.
