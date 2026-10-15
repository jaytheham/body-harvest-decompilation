# IDO switch tables and rodata ordering

When enabling a C `switch` whose placeholder table sits between globals in an overlay, IDO may emit the compiler-generated jump table after the translation unit's globals. The table can therefore reference the wrong ROM address even when the switch control flow matches.

For `func_8008B1A8_173268`, deleting the placeholder table let IDO place its 9-entry table at the target address. A neighboring assembly function still needed the `1.2` double that followed the placeholder, so that constant was moved to the next translation unit's rodata immediately after the current object's rodata. An 8-byte zero pad preserved the next named symbol's target address. Check the linker map and compare ROM bytes around both the generated table and the moved data; function assembly diff alone does not show table contents.

Also inspect table entries against the target before trusting source case labels. The target's final three entries showed that mode 6 is empty, mode 7 calls one handler, and mode 8 calls the next. A `%d` in a default warning format can reveal a missing variadic argument that also needs to remain live in the switch register.

Two body fixes are required to reach the 5 at all (both cost instructions otherwise): the struct field is `unk0`, not `pad0` (`UnkFB6F8Entry`, `structs.us.h`), and the five `handler(i & 0xFF)` calls must read `handler((u8)i)` so IDO emits a single `andi a0,s0,0xFF` in the jal delay slot; `i & 0xFF` makes IDO build the mask in a fresh temp plus two `move`s for cases 1, 2 and 8 (+6 instructions). `func_80089834_1718F4` also needs a prototype in `functions.us.h` because it is defined later in the same TU.

## Matching instructions can still hide incorrect case labels

For `func_802D4F74_18DA84`, enabling the C implementation and removing the placeholder table produced an exact instruction match, but the full ROM checksum still failed. The source assigned labels 0 through 8 to physically ordered handler blocks. The original table instead mapped those blocks to cases `0, 1, 2, 8, 3, 4, 5, 6, 7`.

Relabeling the cases while preserving the order of their bodies fixed the compiler-generated table and yielded `build/bh.us.z64: OK`. Read the original jump table before trusting the case labels in unmatched C. Function instruction diffs compare dispatch code and handler bodies, but do not validate the table entries in rodata; the full ROM build catches this difference.

## The case count sets the table extent - empty cases are not optional

`func_80077A5C_15FB1C` (`overlay_gameplay/inside/158330.c`, 57 instr, `// CURRENT(170)`) is a
four-handler dispatcher (`D_800E65BC[arg1].unkC`, cases 1-4). The wrapped guess listed only
cases 1-4 and measured **2435**: IDO emitted a **compare chain** (`li`/`beq` per case) instead of a
jump table, because the target's dispatch is `sltiu at,t9,8` - an **eight**-entry table. Adding the
empty cases 5-8 (`case 5: case 6: case 7: case 8: break;`) switched IDO to the table and took the
score **2435 -> 210** in one edit; nothing else in that edit moved it.

Two further levers on the same function: the selector must be the **struct field**
(`switch (D_800E65BC[arg1].unkC)`, `Unk80070F7CObj`, `structs.us.h`) rather than the raw
`*(s16 *)((u8 *)&D_800E65BC[arg1] + 0xC)` - the typed read fixes the head's temp assignment
(`$t6` global / `$t7` index) and took **210 -> 170**.

## Final table in core/12C80.c

`func_80015C94_16894` already had matching C behind NON_MATCHING. Its placeholder `jtbl_80038360_38F60` was the last declared rodata in the file, so removing the placeholder and enabling the C let IDO generate the table at the correct address without moving other constants. The complete ROM verified `build/bh.us.z64: OK`. Redundant casts of the s8 return from `func_800165EC_171EC` can also be removed without affecting codegen.
