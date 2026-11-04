incorrect ASM: func_800784B8_160578 used the preceding scratch register for the level-five counter remainder and for the final flag load/OR, despite having the exact 0x330-byte instruction sequence and 0x20-byte frame.

-> code changed: Before the final level-five guard, add a discarded self-product of the alternate unsigned word view of currentLevel converted back to signed word and float. IDO retains the conversion candidate during allocation and removes the unused arithmetic before emission.

-> correct ASM: The counter and final flag scratch registers match without additional instructions. Every ROM byte outside the function matches. The score improves from 70 to 40; the final level guard and two floating constant register choices remain different, so the NON_MATCHING fallback remains.
