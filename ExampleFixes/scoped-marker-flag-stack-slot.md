# Scope affects the marker flag stack slot

Observed in the still-unmatched `func_8009811C_A70CC` in `A49A0.c`.

The marker flag is calculated before the alien and vehicle drawing loops
and consumed after the player marker call. Declaring it in a compound block
covering that drawing section moved its spill from `sp+0x278` to `sp+0x1F8`,
without changing the `0x3E8` frame or structural differences. The diff score
fell from 43009 to 42753. The target slot remains `sp+0xA0`.

Extending the block through the remaining frame loop did not change the
generated assembly. Declaring the flag at the start of the frame loop, or
last among the top-level locals, instead placed it at `sp+0x260`.

These are allocation observations, not a complete function match. A shorter
lifetime alone does not establish the target stack location.
