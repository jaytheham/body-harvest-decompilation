`incorrect ASM`: The vehicle-index reload in `func_8010E480_11D430` used `lbu a3,0(s2); sll t8,a3,2; subu t8,t8,a3; sll t8,t8,3; subu t8,t8,a3; sll t8,t8,2`.

-> `code changed`: Replace `index = D_80152CA0[i].unk0; vehicle = &vehicleInstances[index];` after the building collision call with `vehicle = &vehicleInstances[(s32)D_80152CA0[i].unk0];`. Keep the signed-word promotion inside the array subscript: omitting it produces a second `multu` using the cached 0x5C stride.

-> `correct ASM`: The reload section uses `lbu t8,0(s2); sll t9,t8,2; subu t9,t9,t8; sll t9,t9,3; subu t9,t9,t8; sll t9,t9,2`, matching target ROM offsets 0x11D530 through 0x11D544. The complete function also uses the common hit label and pointer round trip described in `collision-pointer-round-trip-and-common-hit.md`.
