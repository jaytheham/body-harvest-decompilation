# Two-case switch and named selector fix register rotation and stack layout

Matched `func_80018D7C_1997C` in `src.us/core/12C80.c` with IDO 5.3 -O2.

Nested `if (character != 0x25) { if (character == 0x26) { ... } } else { ... }`
produced the correct instruction sequence and stack layout, but later temporary
registers rotated: target t4/t5/t6/t7 became t5/t6/t7/t4.

Use a two-case switch, with case 0x26 before case 0x25 in source. IDO emits the
comparison against 0x25 first, branches to its later block, then compares 0x26.
This recovered the target register allocation throughout the function.

Switching directly on the indexed byte introduced a compiler temporary that
shifted all three spill slots upward four bytes and enlarged the frame from
0x30 to 0x38. Assign the byte to a named `s32 character` before the switch,
and remove the two unused s32 padding locals. The final declarations are:

```c
u8 dialogueIndex;
s32 character;
```

Keep subsequent parsing calls assigned directly to the global result. Reusing
`character` for their return values moved `li v1,1` before the result store,
creating an instruction-order mismatch.

Final assembly diff score: 0. Full ROM verification: `build/bh.us.z64: OK`.

## Three-case crater dispatch

func_800B8F30_C7EE0 in BF9C0.c matches using switch (mode) with cases 0, 1, 2 in that order. Separate if statements put each comparison immediately before its body; the target compares all three cases before any body. There is no jump table for this small switch.

Declare the unused four-word padding first, the named height result second, and the word selector mode last. This puts the selector spill at sp+0x20 instead of sp+0x24 while preserving the 0x40 frame and saved s0/ra slots. The byte argument is widened into mode before osSyncPrintf; retain the named selector across that call. Use the string array directly instead of its array address.

Validated with function diff score 0 and build/bh.us.z64: OK. No rodata split or new file was needed.
