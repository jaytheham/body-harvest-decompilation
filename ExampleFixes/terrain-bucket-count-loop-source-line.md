`incorrect ASM`: The initial count loop in `func_800B604C_C4FFC` schedules the array-pointer `ADDU` before `SLTI index,8`. The target tests the incremented index before adding the old byte offset to the count-array base.

-> `code changed`: Keep the complete initializer on one physical source line: `for (y = 0; y < 8; y++) { counts[y] = -1; }`. A one-line do/while form produces the same ordering; splitting its statements across lines restores the unwanted schedule.

-> `correct ASM`: `SLTI` precedes the pointer `ADDU`, followed by the loop branch with `SH` in its delay slot. The frame remains 0x350 bytes and the length remains 1340 instructions. The comparison improves from 18908 to 18723; register and dimension-reload differences remain, so the function stays NON_MATCHING.
