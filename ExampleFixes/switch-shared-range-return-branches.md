### Switch range checks with shared return paths

When IDO's target dispatches several small selector cases first, followed by
range checks that all return either 1 or a shared 0, use a `switch` and let the
failed cases `break` to one final `return 0`.

For a closed interval, this shape matched the target branch layout:

```c
case 0:
    if (angle >= lower) {
        if (angle < upper) { return 1; }
    }
    break;
```

For a wrapped interval, an `||` inside the success `if` shared the single
success block:

```c
case 3:
    if ((angle >= lower) || (angle < upper)) { return 1; }
    break;
```

Writing the result as `return (condition1 && condition2)` can materialize the
boolean with `xori`, and returning 0 separately inside each case creates local
epilogues instead of the target's shared default path.
