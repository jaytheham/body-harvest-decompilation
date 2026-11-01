`incorrect ASM`: In `func_8000D588_E188`, raw pointer arithmetic with differently spelled channel strides generated a second `sll` for the same channel index and allocated the frame-offset sums to temporary registers.

-> `code changed`: Define the 17 channel descriptors and 256 packed 14-byte animation frames at their actual structure offsets. Load each frame offset into a named `u16` index, add the current frame with a compound assignment, and copy through the typed frame arrays and channel-state frame union.

-> `correct ASM`: The channel stride is calculated once (`sll t6,t0,2`) and reused for both animations; the frame sums use `v0` and `v1`, with the original 0x58-byte frame and local copies at sp+0x44, sp+0x34, and sp+0x24. Function diff score is zero and the complete US and EU ROM checksums pass.
