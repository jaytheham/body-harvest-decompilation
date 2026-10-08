# Indexed save slot loop and named fade limit

Matched `func_80076C98_47148` in `frontend/40720.c`.

Use the global arrays directly in the descending save slot loop: `D_800D6D90[i]`, `D_800D6D98[i]`, and `&D_800D6DA8[i * 7]`. IDO generates three pointer induction variables and schedules their updates correctly. Explicit pointer variables produced the same accesses but different instruction order around the filename check.

The target retains an initial postdecrement guard even though the count is three. Initializing the existing count to three in both arms of a conditional folds late enough to retain this guard and put the decremented count in its delay slot.

For the final fade loop, a literal `fade != -8` generates `bne fade, limit`. A named signed word limit compared as `terminal != fade` generates the required reversed operands. Initialize `fade = 160` before `terminal = -8`, then use a for loop with an empty initializer, to preserve the target constant load order.

Keep the selected slot in a separate local from the descending loop count. Its declaration and the filename buffer position also affect the stack layout. Verify against a fresh full ROM build; the final result was `build/bh.us.z64: OK`.
