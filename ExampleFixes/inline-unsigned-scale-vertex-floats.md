# Inline unsigned scale in a vertex renderer

`func_800DC18C_EB13C` scales six camera basis components, retaining five float products in registers and spilling the sixth. A separate named float scale gave the conversion F0 and the first product F2, and changed instruction scheduling and the frame. Repeating `(f32)arg3` in each multiplication lets IDO share the conversion as an expression temporary in F2 while placing the first product in F0.

Declare the spilled sixth product first. This reduced the local frame to the target eight bytes and placed its home at sp+4. Keep the formal scale parameter `u16`: using a word parameter narrowed explicitly produced an otherwise matching instruction stream but omitted the target full-word argument spill. The extra `(u16)` cast is unnecessary once the formal parameter has the correct type.

The two adjacent basis vectors use `CameraBasis`, allowing the six float loads through one typed symbol without pointer arithmetic. Existing separately named second-vector references retain their linker symbol. Full ROM checksum OK and function diff score 0.
