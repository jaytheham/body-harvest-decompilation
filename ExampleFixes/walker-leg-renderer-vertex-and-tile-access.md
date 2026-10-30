`func_800F7790_106740`: a cached `Vtx *vtx` keeps one vertex pointer across field stores -> write each field through `D_8005BB34` and increment that global after each complete vertex, as in matched `func_801001B4_10F164` -> the target reload/store pattern (`lw ...,0(vertexGlobal); sh/sb ...,field(...)`) is retained. The complete leg renderer remains unmatched.

`gDPSetTileSize(..., 15, 15)` emits tile limits `0x0000F00F` -> pass `15 << G_TEXTURE_IMAGE_FRAC` for both limits -> tile limits match `0x0003C03C`.

`gSP1Triangle(..., 1, 3, 0, 0)` emits `0x00020600` -> use the cyclically equivalent indices `0, 1, 3` (and similarly `0, 3, 2` and `0, 2, 1` for the next two triangles) -> the first triangle word matches `0x00000206`, followed by `0x00000604` and `0x00000402`.

Float division by the local float constant `four = 4.0f` becomes multiplication by `0.25f`, and `radius *= 2.0f` becomes an add -> spell the scale as `(radius * 3.0f) / 4`, `radiusScaled *= 4`, and `radius *= 2` -> retain the target `div.s` and two `mul.s` instructions. Keeping `3.0f` separate from the integer factor used for the vertex offsets also avoids sharing an integer-three register and emitting `multu` for those offsets.

In the intermediate renderer, the optimized Ucode has no product operations at the sin/cos assignment source lines and emits them only at later vertex-coordinate uses -> retain an early discarded use of the live word products, `if (sinTerm + cosTerm) {}` -> both products are emitted before the direction-displacement calculations. This fixes their evaluation order, while register/spill allocation and the complete renderer remain unmatched. Native and private diagnostic UOPT objects were verified identical for the traced candidate.
