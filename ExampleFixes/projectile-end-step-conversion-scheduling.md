`incorrect ASM`: In `func_80128E48_137DF8`, the constant empty condition after the X endpoint assignment allows the cursor increment and store to precede the endpoint step's floating-point conversion.

-> `code changed`: Reference `endStep` in the existing empty condition after the X endpoint assignment.

-> `correct ASM`: IDO emits no conditional branch and schedules the cursor advance after moving the converted integer step back to the FPU. The early half-delta spills and Z endpoint home remain in place. The X and Y spill pairs still need to match.
