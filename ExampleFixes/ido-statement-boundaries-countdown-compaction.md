# IDO statement boundaries in countdown and compaction loops

`func_800E5B78_F4B28` initially emitted the same 95 instructions, registers, and 0x18 frame as the target, with two adjacent instruction swaps. The workbench classified this as scheduling rather than allocation.

Keep the timer reload after the decrement condition, rather than inside it. This places the loop count load before the timer byte conversion. Both paths still read the stored timer; a zero timer stays zero.

Initialize the compaction index and count together in the `for` header:

```c
for (j = i, count = D_80152C96 - 1; j < count; j++)
```

Separate initializer statements placed the index sign extension before the loop comparison. The combined header recovers the target order. Joining the statements on one physical line also worked, but the combined header is clearer.

Verified through `tools/make.ps1`: `build/bh.us.z64: OK`. No compiler flags or rodata changes were needed.

## Fade step loads: physical statement lines

`func_80082074_52524` matches exactly with a frameless unsigned fade interpolation. Its last score of 330 had every instruction, register, and address correct except two constant loads scheduled before endpoint initialization. Put each start assignment, end assignment, and step assignment on its own physical source line inside the direction branches. The first step load then occupies the branch delay slot; the second follows both integer endpoint definitions. Braces, ternaries, type changes, and equivalent expressions on one physical line did not fix it.

Use the existing `D_80094950` symbol through a one-element float array declaration. The folded array index `ptr = &ptr[alpha & 0]` retains the early A1 address materialization without pointer arithmetic; simplifying it to `&ptr[0]` loses that allocation. Empty tests of the double clamp bound and converted alpha preserve the other required operation ordering. All original rodata constants remain at their original addresses. Verified score 0 and full ROM checksum OK.
