`incorrect ASM`

In `func_8011F244_12E1F4`, explicit 16-bit masks on collision IDs changed argument scheduling. Reading `unk8 & 1` rotated temporary registers after the gate animation. A top-level distance local used sp+0x7c instead of sp+0x5c, while three collision-call spill slots were four bytes too low.

-> `code changed`

Rely on the collision helper's u16 parameter conversion and use the existing `lowFlags` bitfield. Remove the cached opening byte and index locals; read the opening directly and repeat the building-index expression in collision calls so IDO shares it. Declare the X-distance local inside the gameplay block, after all graphics macros.

-> `correct ASM`

Argument loads, narrowing copies, and temporary registers match. The distance spills at sp+0x5c, the shared index at sp+0x54, and callbacks at sp+0x50 and sp+0x4c within the original 0x88 frame. The US ROM checksum passes.
