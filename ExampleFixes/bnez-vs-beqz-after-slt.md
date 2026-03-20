#### Getting `bnez` vs `beqz` after `slt`

When you have assembly like:

```
slt $at, $a, $b      # $at = (a < b)
bnez $at, label      # branch if a < b
```

To generate `bnez` instead of `beqz`, negate the condition and flip the if/else blocks:

```c
if (!(a < b)) {
    // false case
} else {
    // true case (where bnez branches to)
}
```

This makes the compiler branch to the else block when the condition is true, producing `bnez`.
