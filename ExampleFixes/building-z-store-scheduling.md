`incorrect ASM`: The building-target case in `func_800F066C_FF61C` stored the raw Z coordinate with `sh`, loaded it back with `lh`, then sign-extended it with `sll` and `sra`.

-> `code changed`: Keep the sum in a word local. Save its low halfword, assign the same sum to the signed coordinate local, and normalize that local through `targetZ = (u32)targetZ & 0xFFFF`. Give the narrowing assignment a lower logical source line than the halfword store with `#line`. The native assembler trace showed that the store and left shift were ready with the same scheduling priority. The line directive resolved their tie.

-> `correct ASM`: The building Z block emits `move`, `sll`, `sh`, and `sra` in the target order. This resolves the local opcode mismatch. The function still has register and interpolation differences.
