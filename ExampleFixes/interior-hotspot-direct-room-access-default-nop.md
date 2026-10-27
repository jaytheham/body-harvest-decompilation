`incorrect ASM`: In `func_8007A414_1624D4`, a cached catalog pointer swaps t8/t9 during the catalog stride. After correcting that, a cached room pointer still lets IDO move the error-message LUI into the default dispatch branch delay slot, deleting the target NOP and shortening the function by four bytes.

-> `code changed`: Keep the object index and hotspot dimensions as s32 locals, and access both room entries and catalog entries directly through their arrays. Remove the redundant coordinate-conversion locals and pointer casts.

-> `correct ASM`: The catalog base loads into t8 and its stride uses t9. The default branch at ROM 0x162550 retains its NOP; the message LUI stays at 0x16261C. All 129 instructions and the full US ROM checksum match.
