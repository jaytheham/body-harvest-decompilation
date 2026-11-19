`incorrect ASM` — In `func_800ED78C_FC73C`, using the joystick magnitude local for both interpolation coefficients put the coefficients in `f18` but added `swc1 f18,0x74(sp)` and `lwc1 f18,0x74(sp)` around animation calls.

-> `code changed` — Use `xDelta` for both interpolation coefficients and keep `sp74` for the clamped joystick magnitude. Use `temp_f12`, `temp_f18`, and `scratchFloat` for the normalized X, Y, and Z deltas. After the clamp, assign `xDelta = (f32)(f64)scratchFloat` from the square-root result. Add `if ((u32)(xDelta != 0.0f) * 0) {}` before the swimming test, inside the low-speed branch, and before the swimming speed assignment. Keep the late zero check on `sp74`.

-> `correct ASM` — All six interpolation multiplications use `f18`. The movement code makes the original six accesses to `0x74(sp)` and no longer saves and reloads the magnitude around the animation calls.
