`incorrect ASM`

In `func_80121A64_130A14`, file-scope angle storage produced `lui t1; addiu t1; lh ...,0(t1)` instead of the target self-clobbering `lui v0; lh v0,...(v0)`. A cached angle local changed the register allocation and scheduling of both later collision calls. Initializing position Y/Z after the rotation and scale also delayed their loads.

-> `code changed`

Make the initialized signed halfword a function-local static and access it directly in the conditions and update. Keep the original renderer's explicit angle-state writeback without introducing a cached angle local. Initialize all three position fields before rotation and scale. Inline the building-array index in the collision IDs and remove the unused word locals. Move the following RGB initializer into its consuming function as a local static too; the compiler supplies the final data alignment padding, preserving the original bytes and static-data order.

-> `correct ASM`

The state loads use `lui v0; lh v0,...(v0)`. Position Y/Z load before rotation and scale stores, the state writeback occupies the matrix-call delay slot, and both collision calls match the target argument order and registers. The frame is 0x60 and the building pointer spills at sp+0x5c. `tools/make.ps1` reports `build/bh.us.z64: OK`.
