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
