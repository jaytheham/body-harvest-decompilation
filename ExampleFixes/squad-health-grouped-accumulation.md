`incorrect ASM`: In `func_800A9A90_B8A40`, `hpDelta += oldHealth - currentHealth` computes the difference before adding the accumulator. Splitting this into two compound assignments keeps the intermediate sum in `a0`, shifting the following temporary-register cycle. A standalone byte pointer also reverses the parent-base/index operands, and returning the comparison directly changes the final branches.

-> `code changed`: Keep the parent as `AlienInstance *` and index `parent->alienIds[i - 1]`. Write `hpDelta = (hpDelta + oldHealth) - currentHealth`. Use `if (threshold < hpDelta) { return 1; }` inside the timer branch and a shared `return 0` afterward.

-> `correct ASM`: The loop emits `addu v1,a2,a3`, `addu t9,a0,t8`, and `subu a0,t9,t8`, preserving the unrolled-loop register cycle. The comparison emits the target `bc1fl`, branch, and constant-return delay slots. Function diff score is zero, and complete native US and EU ROM builds both report `OK`.
