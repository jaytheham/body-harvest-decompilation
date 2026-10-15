### Save-slot byte copy (func_800020E0_2CE0)

A 0x76-byte copy with two leading byte copies followed by a four-byte unrolled body matches a simple s32 loop: initialize src and dst to slot * 0x7A + 0x53, then use D_800431C0[dst++] = D_800431C0[src++] for i = 0; i < 0x76; i++. IDO peels the first two iterations and unrolls the rest. Recomputing the destination checksum offset from the original arg1 preserves the target register allocation. This matched the full ROM on 2026-10-12.
