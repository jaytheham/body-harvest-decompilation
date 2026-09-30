# IDO switch tables and rodata ordering

When enabling a C `switch` whose placeholder table sits between globals in an overlay, IDO may emit the compiler-generated jump table after the translation unit's globals. The table can therefore reference the wrong ROM address even when the switch control flow matches.

For `func_8008B1A8_173268`, deleting the placeholder table let IDO place its 9-entry table at the target address. A neighboring assembly function still needed the `1.2` double that followed the placeholder, so that constant was moved to the next translation unit's rodata immediately after the current object's rodata. An 8-byte zero pad preserved the next named symbol's target address. Check the linker map and compare ROM bytes around both the generated table and the moved data; function assembly diff alone does not show table contents.

Also inspect table entries against the target before trusting source case labels. The target's final three entries showed that mode 6 is empty, mode 7 calls one handler, and mode 8 calls the next. A `%d` in a default warning format can reveal a missing variadic argument that also needs to remain live in the switch register.

## Matching instructions can still hide incorrect case labels

For `func_802D4F74_18DA84`, enabling the C implementation and removing the placeholder table produced an exact instruction match, but the full ROM checksum still failed. The source assigned labels 0 through 8 to physically ordered handler blocks. The original table instead mapped those blocks to cases `0, 1, 2, 8, 3, 4, 5, 6, 7`.

Relabeling the cases while preserving the order of their bodies fixed the compiler-generated table and yielded `build/bh.us.z64: OK`. Read the original jump table before trusting the case labels in unmatched C. Function instruction diffs compare dispatch code and handler bodies, but do not validate the table entries in rodata; the full ROM build catches this difference.