# Branch-local texture loads and map label loop scheduling

Matched `func_80097444_A63F4` in `overlay_gameplay/outside/A49A0.c`, IDO 5.3 -O2.

The target contains two complete texture-loading sequences, one in each arm of
the row test. Sharing the tile, load, sync, and tile-size commands after the
conditional shortened the function and introduced different branches. Keep the
whole sequence inside each arm when the target duplicates it. This also changes
the SDK macros' local pointer slots and therefore the frame size.

After restoring those blocks, the remaining scheduling fixes were:

* Increment the typed matrix buffer in `gSPMatrix(...,
  K0_TO_PHYS(D_8005BB38++), ...)`. Incrementing it after the vertex allocations
  gives the right operations but orders the matrix and vertex buffer stores
  differently.
* Initialize `xStep = -stepAbs` in the inner `for` initializer, alongside
  `col = 0`. A separate assignment before the loop moves the negation ahead of
  the row-coordinate calculation instead of into the branch delay slot.

The target uses a full-width `y` temporary and a signed column counter. With all
instructions and registers correct, the final declaration order was: four
vertex pointers, `col`, `row`, `loopLimit`, `xStep`, `y`, `pos`, `base`, `stepAbs`.
That places `base` at sp+0xBC, `pos` at sp+0xC4, the loop limit at sp+0xD4,
and the saved row at sp+0xD8 in the 0xF0 frame. An unused address-mask local
inflated the frame; it was removed.

Verified with `tools/make.ps1`: full ROM `OK`, function diff score 0.
