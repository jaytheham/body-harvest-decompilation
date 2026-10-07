# Frontend byte counters and fade alpha

In func_8008098C_50E3C, a u8 counter expresses the target increment followed by andi 0xFF. A for loop places the table store after the loop comparison, whereas a do/while with an explicit increment schedules the store earlier.

In func_800809DC_50E8C, a u8 for loop with i != 10 and direct array accesses replaces the goto implementation while matching exactly.

In func_80079F30_4A3E0, the alpha parameter is u8 and is passed directly to gDPSetPrimColor. An s32 parameter omits the target parameter spill and moves; an s16 parameter changes temporary register allocation. An explicit arg0 & 0xFF with u8 adds redundant compiler expression handling and changes registers. All three functions were verified with the full ROM checksum.

In func_80080588_50A38, use one shared three-byte color type for the source array and destination. A direct structure assignment matches the lbu/sb pattern through at, t5, at. Casting between two separately declared but identical RGB structs swapped the registers used for the base pointer and multiplied index. The light selection contains a byte followed by four byte indices; a u8 for loop over the first three matches the target.

In func_80080AD4_50F84, copying the full 14-byte frame into the state also copies its duration. Direct indexed structure assignment avoids the extra named source pointer register. The channel descriptor is a pair of u16 start/count fields at offset 0xC.

In func_80081F9C_5244C, reading the existing absolute alias D_800949D4 and writing the defined data symbol D_800949D4_64E84 preserves the target independent address materialization. Do not judge the data symbol address while the function size differs: text changes shift subsequent linked data alignment. Verify the whole ROM.
