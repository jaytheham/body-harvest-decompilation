# Direct field reads can change IDO spill high-water

`func_802DDE04_1F6B14` matches with direct instance-field reads for both
spin speed and the later flags test. The full project build reports
`build/bh.us.z64: OK`, and the function diff score is 0.

Caching both fields in scalar locals produced identical instructions and
registers, but the two pointer spill homes were four bytes too low.
Removing only the flags local reduced the frame from 0x50 to 0x48.
Removing the speed local too restored the required 0x50 frame and pointer
homes at sp+0x30 and sp+0x2C, without padding or address-taking tricks.

A private, stock-equivalent IDO trace showed why: direct speed reads add
an optimizer spill expression for the field load. That spill reuses the
previous flags slot, but interferes with a later temporary, so the later
temporary gets a new slot. The final local high-water grows from 40 to
44 bytes even though the redundant source locals were removed. The
extra optimizer spill does not add emitted instructions.

When only spill offsets differ, removing redundant locals can change
both the frontend local reservation and the optimizer spill graph.
Do not assume fewer C locals must produce a smaller final frame. Check
related field caches together, then verify with the normal ROM build.
