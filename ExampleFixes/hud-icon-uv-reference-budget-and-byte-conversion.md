`incorrect ASM`: In `func_8009C6CC_AB67C`, one four-way assignment of the positive icon texture coordinate leaves the red stores split across IDO's automatic basic-block boundary. The frame multiplier uses `a2/t4`, red uses `a1`, and white uses `v0`.

-> `code changed`: Write the four positive texture coordinates separately using the repeated expression `(arg6 * 0x30) + 0x600`. Keep the negative coordinates chained. IDO eliminates the repeated multiplies, while the additional parameter references move its automatic block boundary before the color stores.

-> `correct ASM`: The animation frame and multiplier use `a1/a2`; the positive and negative texture coordinates use `v1/a0`; red and white use `v0/v1`. There is still only one positive multiply and one negative multiply.

`incorrect ASM`: The special-icon condition loads its type into `t8` and materializes the texture base in `t9`. AS1 can overwrite the dead depth constant in `t9` early, so it moves the texture address ahead of the UV stores.

-> `code changed`: Keep the red byte stores chained. Reuse the expired signed-word offset local with `tempT2 = 0xFF`, then chain both white channels from that local. The byte conversions change UGEN's temporary-register activity without adding instructions.

-> `correct ASM`: The condition loads its type into `t6`, its texture argument into `t9`, and its texture base into `t7`. That base must wait for the negative-frame multiplication to finish using `t7`, restoring the target `li at,2`, UV stores, and later texture-address sequence. All subsequent graphics packet temporaries match.

`incorrect ASM`: Explicit arrays for the renderer's eight `255.0` constants reverse multiplication operands, merge the wrong literal uses, and alter floating-point scheduling.

-> `code changed`: Remove those placeholder arrays and use `(f64)255.0f` as the clamp limit and `255.0` as the multiplier, following the already matched companion HUD renderer.

-> `correct ASM`: IDO emits the separate literal pairs at `0x801426D0` through `0x80142708`, with the target floating-point register order. The complete US ROM checksum is `OK`.

`incorrect ASM`: The renderer is otherwise instruction-exact, but its offset spill uses `sw/lw t2,0x24(sp)` instead of `0x20(sp)`.

-> `code changed`: Keep signed-word reservations before the icon flag and between the flag and the reused offset scalar, replacing the original unused double reservation.

-> `correct ASM`: The frame remains `0x40`, the flag uses `sp+0x28`, and the offset spill/reload use `sp+0x20`. The normal full US ROM checksum is `OK`.
