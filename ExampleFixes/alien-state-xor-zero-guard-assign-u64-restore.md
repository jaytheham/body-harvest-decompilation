`incorrect ASM`: `func_8007E608_8D5B8` stayed a few differences short of the target with its logic correct: registers and scheduling around the first comparison, the empty debug guard and the final `unk8` restore.

-> `code changed`: Three small source changes, none of which alter what the code does: compare with `state ^ 0`, assign the guard's middle test to an unused local with `(new_var = arg1->unk1A == 0xD)`, and restore with `type0->unk8 = (u64) saved0`. Removing any one of them breaks the match.

-> `correct ASM`: The function compiles to the target, and the US and EU ROMs both match.
