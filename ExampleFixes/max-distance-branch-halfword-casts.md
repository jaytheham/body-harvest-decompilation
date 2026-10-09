# Maximum distance ternary and branch casts

Matched `func_8008751C_964CC`. Keeping maximum absolute X/Z distance in one nested ternary reproduced the target a0/a1 allocation; splitting the Z absolute value into a local and using if/else swapped those registers. Cast each ternary result to s16 separately. Casting the entire ternary moved sign extension out of the branches and changed scheduling. Correct distance parameter types are s16. Full ROM verified OK.
