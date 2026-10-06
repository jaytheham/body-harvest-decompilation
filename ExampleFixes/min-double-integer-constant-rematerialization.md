# Integer limits in double-precision MIN expressions

In the map screen `func_8009811C_A70CC`, the vehicle fade and player fade
limits compare a double result against one, then convert either branch to
float. The target reloads the double representation of one for the comparison
and for the selected constant branch:

```c
fade = MIN(1, (f64) fade + step);
```

Using `MIN(1.0, ...)` instead lets IDO reuse the double constant already held
in a saved floating-point register elsewhere in this large function. That
removes the target's `lui 0x3FF0` and `mtc1` instructions and changes the
branch to a branch-likely form. The integer literal restores the target's
constant materialization and ordinary branch, including the branch-local
`cvt.s.d` instructions. Both forms perform the same double-precision clamp.

Verified for the blocks beginning at ROM offsets `0xA98C0` and `0xA9C38`
with the required project build and function diff. The enclosing function
is still being matched; this is an instruction-pattern result, not a full
ROM checksum match.
