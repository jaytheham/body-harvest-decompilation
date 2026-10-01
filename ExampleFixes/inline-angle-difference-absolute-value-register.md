# Inline angle difference preserves the absolute-value register

`func_80090C14_9FBC4` matched with two `s16` angle locals and the difference
written directly inside `BH_ABS`:

```c
s16 playerAngle;
s16 targetAngle;
s32 diffX;
s32 diffZ;

/* Compute targetAngle, then the player coordinate differences. */
playerAngle = func_80003824_4424(diffX, diffZ);
if (BH_ABS(targetAngle - playerAngle) < 0x4000)
{
    targetAngle += 0x8000;
}
```

The subtraction of the two halfwords is promoted to native `int`. IDO emits
the difference in `a0`, its negation in `a1`, and the ternary result in `a2`.
The second angle remains in `v0` without a sign-extension sequence.

Assigning the difference to the existing `s32 diffX` local before the
comparison produced identical instructions but put the ternary result in
`v0`, leaving three register mismatches. A separate absolute-value local,
or an explicit if/else around that named difference, did not fix them.
Reusing the coordinate locals for the absolute value also changed earlier
register allocation and sometimes the stack frame.

When only the result register differs, check the promotion of the original
operands and try retaining the narrow operands with an inline expression
before adding more temporaries or changing a function's return type.
