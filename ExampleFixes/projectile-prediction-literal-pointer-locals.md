`incorrect ASM`

In `func_80128650_137600`, caching the placeholder `0.05` in a named double loaded it into `$f20` before the loop constants. Sharing the vehicle-list and alien-type pointer storage also assigned that pointer `$s3` and the scan index `$s4`. Removing the building-height temporary left a `0xA0` frame, the weapon pointer at `sp+0x9C`, and the motion-pointer spill at `sp+0x64`.

-> `code changed`

Use `motion[0] += 0.05` directly. Remove its placeholder from the earlier supplemental late rodata and attach the remaining `0.7` and `3000.0f` placeholders to the next `GLOBAL_ASM` function, preserving the literal order. Give the vehicle, alien, building, alien-type and active-list pointers distinct typed locals. Declare the weapon pointer first, the short floor output after the scan index and X scratch, and retain a word-sized building-height temporary before the active-list pointer.

-> `correct ASM`

The constants use `$f20` for `1.0`, `$f22` for `0.05`, and `$f24` for `100.0f`; the scan index is `$s3` and the list/type pointer is `$s4`. The frame is `0xA8`, the weapon pointer is at `sp+0xA4`, the floor output is at `sp+0x8A`, the iteration count is at `sp+0x80`, and the motion-pointer spill is at `sp+0x68`. The full US and EU ROM checksums pass.
