# IDO statement boundaries in countdown and compaction loops

`func_800E5B78_F4B28` initially emitted the same 95 instructions, registers, and 0x18 frame as the target, with two adjacent instruction swaps. The workbench classified this as scheduling rather than allocation.

Keep the timer reload after the decrement condition, rather than inside it. This places the loop count load before the timer byte conversion. Both paths still read the stored timer; a zero timer stays zero.

Initialize the compaction index and count together in the `for` header:

```c
for (j = i, count = D_80152C96 - 1; j < count; j++)
```

Separate initializer statements placed the index sign extension before the loop comparison. The combined header recovers the target order. Joining the statements on one physical line also worked, but the combined header is clearer.

Verified through `tools/make.ps1`: `build/bh.us.z64: OK`. No compiler flags or rodata changes were needed.
