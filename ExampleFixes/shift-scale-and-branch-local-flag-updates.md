# Shift scaling and branch-local flag updates

Observed in the still-unmatched `func_8009811C_A70CC` in `A49A0.c`.
These changes matched individual instruction sequences, not the full function.

## Subtract before scaling

For `(frame - 16) * 16`, IDO distributed the multiplication and emitted
`sll frame,4` followed by `addiu ..., -256`. The target subtracts first,
then shifts into a separate register. Writing the subtraction into an
existing integer temporary and scaling with `<< 4` preserved that order:

```c
temp_v0 = frame - 16;
temp_v1 = temp_v0 << 4;
```

The surrounding checks constrain frame to 16 through 31, so the shifted
value is nonnegative. All three scale-component stores then matched.

## Keep flag updates in their branches

Computing a shared `temp_v0` in both branches and storing it after the
join let IDO hoist the flag load before camera-coordinate conversion.
The target loads it late, after the Y conversion, and stores independently
in each branch. Direct compound assignments restored that sequence:

```c
if (flags[0] & 0x20) {
    cameraX = 100000;
    flags[0] &= ~0x20;
} else {
    cameraX = /* converted X */;
    cameraY = /* converted Y */;
    flags[0] |= 0x20;
}
```

Here `flags` is the existing one-element local array. The frame stayed
`0x3E8`, and the entire flag-toggle block matched structurally.
