# Nested MAX and branch-likely copies

Observed in the zone-distance block of `func_8009811C_A70CC`.
The full function remains unmatched, but the structural diff for the
repeated max comparisons now disappears.

The target computes a square-distance metric using:

```c
distance = MAX(MAX(dx, -dx), MAX(dy, -dy));
```

Expanding the comparisons into nested `if` statements can calculate the
same value while dropping the target's intermediate register copies and
branch-likely edges. In particular, the selected X maximum passes through
an extra temporary on one arm. Keep the nested macro expression rather
than simplifying it to cached absolute values or hand-written branches.

This correction can increase the overall diff score through changed
register allocation and temporary stack slots. Check the comparison block
itself: structural agreement takes precedence over the aggregate score.
