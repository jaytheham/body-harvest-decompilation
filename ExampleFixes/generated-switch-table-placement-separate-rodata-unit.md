# Generated switch table followed by existing constant data

In `func_801052E8_114298`, the generated seven-entry switch table belongs at
ROM 0x153B30, immediately after the double at 0x153B28. Existing constants
starting at 0x153B50 originally shared the same C translation unit.

Deleting the placeholder jump table and compiling the C switch put the generated
table after those later constants, at 0x153D50. Moving their definitions below
the function did not change this: IDO still emitted the named constant data
before its generated switch table.

The working layout separates the later constants into
`src.na/overlay_gameplay/outside/101840_rodata.c` and gives that unit a rodata
segment at 0x153B50 in `bh.na.yaml`. Their declarations remain in
`include/variables.h`. The original unit emits the preceding constants,
the generated table, and its alignment padding; the new unit supplies the
following constants at their existing addresses.

This reproduces every target rodata byte and preserves the surrounding ROM.
After the independent register fixes, the final full ROM build reports
`build/bh.na.z64: OK` with zero differing bytes.

Regenerating linker metadata must scan all symbol references. Using only the
linker mode emptied needed automatic undefined-symbol aliases in this project.
Keep the assembly reference files untouched when regenerating the metadata.
