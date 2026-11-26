# func_80118774_127724: local trigonometric divisor

`incorrect ASM`: The renderer cached 32768.0 in $f26 across its outer loop. Its prologue saved $f26, and the sine/cosine calculations divided by $f26 instead of constructing the divisor locally.

-> `code changed`: Insert `if (1) {}` immediately before the shared `if (processBuilding)` rendering block, after damage/hash preparation. Keep the normal `gSPMatrix` and other display-list macros.

-> `correct ASM`: The $f26 save disappears. The sine calculation now emits `lui $at,0x40E0; mtc1 $at,$f11; ...; mtc1 $zero,$f10; ...; div.d $f16,$f8,$f10`, restoring the target's local divisor construction. Other renderer differences remain.

`incorrect ASM`: Computing `type = &buildingTypes[building->buildingType]` before the orientation test hoisted the address calculation out of both branches.

-> `code changed`: Remove that pointer assignment and read `buildingTypes[sp1C8].unk10` and `.unk12` directly in each branch, using the saved full-width type index.

-> `correct ASM`: Each branch constructs its own building-type address and loads its signed halfword extents, matching the structure at target ROM offsets 0x127A14–0x127A40.

`incorrect ASM`: Door-animation cases appeared in numeric order, moving the case 6 and case 5 angle calculations after cases 2–4 and moving the case 7 translation after cases 3–4.

-> `code changed`: Keep the switch and generated jump table, but arrange its case bodies in source order `1, 6, 5, 2, 7, 3, 4`.

-> `correct ASM`: The animation blocks follow the target's physical order: case 1 at 0x128598, case 6 at 0x1285C0, case 5 at 0x1285E0, case 2 at 0x12860C, case 7 at 0x128668, case 3 at 0x1286C4, and case 4 at 0x128720. These are target offsets; remaining renderer differences still shift current offsets.

`incorrect ASM`: Using `*scanPtr-- = 0xFF; *revisitPtr-- = 0xFF;` scheduled the first pointer decrement before the second byte store.

-> `code changed`: Store both bytes first, then decrement both pointers in separate statements.

-> `correct ASM`: The two SB instructions precede the two ADDIU pointer decrements, matching the target initialization loop's instruction order.

`incorrect ASM`: The door-property check cached 0.0f in $f22 and the rotation scale cached 16384.0f in $f24. The renderer saved both registers on entry.

-> `code changed`: Spell the zero as `(f32)(prop->unk12 * 0)` and the scale as `(f32)(16384 + prop->unk12 * 0)` inside the guarded door block, letting IDO fold both after optimization.

-> `correct ASM`: IDO materializes the constants inside the door block and saves only $f20, matching the target saved-register set. Other renderer differences remain.

`incorrect ASM`: Separate matrix and pop macro temporaries expand the frame to 0x208, with the coordinate, scan-array, and search-index homes displaced.

-> `code changed`: Reuse one `Gfx *` for the matrix and pop packets and order the main declarations by their stack homes. Keep the five door coordinates in one halfword struct with a leading halfword so the helper calls see the original contiguous layout. Store the door tag as a word and read its lowest byte through `SignedWord.bytes[3]`.

-> `correct ASM`: The frame is 0x1D8 and the position, bounding-box, scan-array, and door-tag homes agree with the original. The word tag uses `sw` at sp+0x14C and `lbu` at sp+0x14F. The scan dispatch and other scheduling differences remain.

`incorrect ASM`: The revisit selection's ternary tests equality and loads the 0x195 halfword's low byte on fallthrough, reversing the target's branch and the order of the byte reads.

-> `code changed`: Compare the first saved index to the current building in an explicit if/else, reading the alternate index in the equal arm. Use array indexing for the revisit scans and restore two standard matrix macros to preserve the frame after removing their old cursor locals.

-> `correct ASM`: The comparison emits `bne`; its fallthrough reads sp+0x197 and its taken arm reads sp+0x195. The frame stays 0x1D8. The surrounding register and control-flow differences remain.

`incorrect ASM`: Door animation case 2 multiplies with `mul.d $f6,$f4,$f16`, and case 7 adds with `add.d $f10,$f6,$f8`.

-> `code changed`: Represent the two existing `0.95` constants with `ShadowGeometryConstant` and read their `.value` fields. Keep both constant definitions in their original read-only data order after the jump table.

-> `correct ASM`: Case 2 uses `mul.d $f6,$f16,$f4` at US ROM `0x12864C`, and case 7 uses `add.d $f10,$f8,$f6` at `0x1286B0`. The constants retain their original ROM addresses.

`incorrect ASM`: In the first rotating-door matrix packet, the cursor increment reuses the pointer loaded for the packet address. The target reloads the cursor after storing that address.

-> `code changed`: Scope the key copy around the matrix helper, read the matrix cursor for the packet separately, and increment the cursor in its own statement.

-> `correct ASM`: The packet address store is followed by a fresh cursor load before the pointer increment. All seven door-animation jump-table entries remain byte-for-byte exact in US and PAL.

`incorrect ASM` -> The scan flag is initialized with `sw $zero, 0x19C($sp)` after putting both index arrays in one backing store.

`code changed` -> Exchange the position of the loop counter declaration with the scan flag declaration so the flag follows the queue declaration.

`correct ASM` -> The initialization uses `sw $zero, 0x168($sp)` at US ROM `0x12793C`. The queue cursors still start at `sp+0x18F` and `sp+0x17F`.

incorrect ASM -> The renderer reserves a 0x1E8-byte frame with the queue arrays grouped in a union and the mirror scale declared at function scope.

code changed -> Use two indexed queues and limit the negative scale temporary to the mirroring block. Keep the queue count and scan flag immediately after the arrays in declaration order.

correct ASM -> The frame uses addiu sp, sp, -0x1D8. The initialization still forms sp+0x18F and sp+0x17F for the queue cursors and stores the scan flag at sp+0x168.
