# Lens distortion: reuse the integer distance before converting to float

Matched `func_8000E048_EC48` in `src.us/core/E830.c`.

Use three integer locals for X, Y, and distortion, followed by the float scale. First assign the squared distance to `distortion`, then overwrite it with the weighted distortion expression. This produces the target radius in `t2`, distortion sum in `t0`, and the global strength in `t1`. Separate strength and distortion locals changed the integer allocation despite identical arithmetic. Keeping the integer sum inside the float expression also allocated the double constant differently.

Keep the coordinate calculations inside each quadrant branch and use an outer if/else. Inline `32767.0` in each scale expression, retaining the `(f32)` cast on the integer distortion: the target converts integer to single precision before double precision subtraction and division.

IDO places generated literals after declared rodata. Remove the four obsolete double placeholders and inline the next matched function's `2.8` constant as well. Move the three following float placeholders to the beginning of the next translation unit, `FD80.c`, whose rodata immediately follows E830. Include the final zero in the last float array to retain the original 16-byte block. A scalar `const f32` zero went into `.data` rather than `.rodata`, shifted later symbols, and failed the ROM check.

The target and neighboring projection function have no assembly differences, and the full build reports `build/bh.us.z64: OK`.

## Rotation function and the first generated double

`func_8000DCCC_E8CC` also matched after enabling its existing C body and deleting the remaining `D_80037620_38220` placeholder. Its inline `32767.0` now generates the first double, followed by the lens-distortion function's four doubles and the projection update's `2.8`. No named double placeholders remain in E830.

Preserve integer truncation of each rotated coordinate before applying the float scale. The trig values need `(f32)` casts before division by the double `32768.0`: the target converts the short trig result to single precision, then double precision. The angle likewise narrows through `(f32)` before the attenuation's double subtraction. The integer-to-float casts on the final scale multiplications are redundant and can be removed without changing any instructions. The unused `pad38` declaration remains between the scale and trig locals to retain the target stack layout.

After descriptive local renaming, formatting, and removing redundant casts, the entire ROM still reports `build/bh.us.z64: OK` and the rotation function has no assembly differences.
