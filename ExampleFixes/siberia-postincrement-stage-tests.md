`incorrect ASM`: In `func_802D7398_2B97C8`, copying the timer into a temporary, incrementing it separately, and testing the temporary gives `slti at` after the increment and shifts the timer/stage address registers.

-> `code changed`: Write each transition as `if (D_80157F8E++ >= threshold)`, following the matched Comet stage handlers. In stage 3, increment the stage before clearing the timer. Remove the placeholder switch table so IDO emits its own table.

-> `correct ASM`: IDO emits `slti v1` before the increment, keeps timer/stage addresses in `a3`/`t0`, and places the stage-3 timer clear in the branch delay slot. All 92 instructions match and the full US ROM checksum passes.
