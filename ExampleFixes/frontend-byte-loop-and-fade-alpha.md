# Frontend byte counters and fade alpha

In func_8008098C_50E3C, a u8 counter expresses the target increment followed by andi 0xFF. A for loop places the table store after the loop comparison, whereas a do/while with an explicit increment schedules the store earlier.

In func_800809DC_50E8C, a u8 for loop with i != 10 and direct array accesses replaces the goto implementation while matching exactly.

In func_80079F30_4A3E0, the alpha parameter is u8 and is passed directly to gDPSetPrimColor. An s32 parameter omits the target parameter spill and moves; an s16 parameter changes temporary register allocation. An explicit arg0 & 0xFF with u8 adds redundant compiler expression handling and changes registers. All three functions were verified with the full ROM checksum.
