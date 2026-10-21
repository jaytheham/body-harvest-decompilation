`incorrect ASM`: In `func_80103760_112710`, the mass sum evaluated before the inverse distance changed the load order and floating register allocation; a separate denominator enlarged the frame, the ratio spill was absent, and countdown copies used `v1`.

-> `code changed`: Compute `invDist` before the mass sum, sum the two `VehicleType.unk32` fields directly, and reuse `oneMinus` for that denominator. Retain empty checks of the desired distance, Y delta, ratio after the impulse call, and terrain-point pointer to preserve their allocation boundaries. Declare the called chain-update helper as `void func_80103308_1122B8(VehicleInstance *, VehicleInstance *)` in `include/functions.us.h`.

-> `correct ASM`: The frame is `0x78`, the ratio is stored at `sp+0x4C`, distance/desired-distance/sum use `f16/f14/f18`, and both countdown copies use `move v0,s1`. All 366 instructions match and the full US ROM checksum passes.
