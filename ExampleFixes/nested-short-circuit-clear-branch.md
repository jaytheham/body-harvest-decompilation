### Clear only on the first condition's failure

When a target uses a short-circuit test followed by a clear operation, check
whether the clear belongs to failure of the first condition or failure of the
whole combined condition. These forms are not equivalent when the first test
succeeds but the second test fails.

```c
// Wrong if the target leaves the flag unchanged when the call succeeds
// but the secondary bit test fails:
if ((check(id) != 0) && (entry->flags & MASK)) {
	entry->flags |= FLAG;
} else {
	entry->flags &= ~FLAG;
}

// Correct for that target control flow:
if (check(id) != 0) {
	if (entry->flags & MASK) {
		entry->flags |= FLAG;
	}
} else {
	entry->flags &= ~FLAG;
}
```

In `func_800705E0_1586A0`, the target's `beql` after the secondary bit test
skips both the set and clear paths when the bit is absent. The clear path is
reached only when `func_8000726C_7E6C` returns zero. This also gives IDO the
target branch destination; writing the inverted `if (check == 0) clear; else
if (bit) set;` form produces a different branch layout.

The similar test in the animated-room branch has different behavior: when
`func_8000726C_7E6C` succeeds but the secondary bit is absent, the target
clears the flag. Express that path as a combined condition with the clear in
the `else`:

```c
if ((check(id) != 0) && (entry->flags & MASK)) {
	entry->flags |= FLAG;
} else {
	entry->flags &= ~FLAG;
}
```

Do not reuse the nested form from the nonanimated branch for this path.
