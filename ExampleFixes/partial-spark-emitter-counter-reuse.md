# Spark emitter allocator: capped count reused as loop counter

Still unmatched: func_800C541C_D43CC in CFE30.c. The typed baseline scored 4525; the retained counter-reuse candidate scores 2993. More than 25 valid compiled variants were tested. No enabled candidate passed the ROM checksum.

Model the payload at entry offset 8 as SparkEmitterState: three s16 position components, three color bytes, padding at offset 9, an active byte at offset 10, and final padding. The target active store is SB at entry offset 0x12, overlapping the high byte of the old unk12 field. Use the typed payload rather than byte pointer arithmetic.

The capped input particle count and later loop counter appear to share a variable in the original source. Initialize the loop counter from arg8, clamp it to 40, and copy it into a separate s32 spawnCount for the allocation budget check. Reuse the counter for the particle loop. The s32 counter with explicit byte wrapping after increment gave the best tested allocation. A separate cappedCount local made the result worse.

Use a u8 effect ID and preserve the self-assignment of the effect flag. Moving that self-assignment relative to the unit-index assignment did not improve this candidate. A named Vec3f direction pointer also failed to improve it.

The target reloads arg1 and arg3 from their argument homes after allocation, while current variants keep one or both in saved registers. Volatile byte views, a volatile formal parameter, and a word formal parameter with an explicit signed-byte view did not reproduce the complete sequence. Prototype experiments were restored to the original declaration.

One to four blocks around only the three vector assignments made the result much worse. Blocks around the entire payload setup did not change the best score. Further work should focus on parameter caching and setup store order before fine-tuning the frame and registers.
