# Cast float coordinates to `s16` before subtracting

When matching a float-to-integer delta calculation, cast the float operand to
`s16` before subtracting the saved `s16` coordinate:

```c
delta.x = (s16) position.x - previous.x;
```

For `func_8008B474_173534`, this form matches the target instruction schedule.
Casting the float to `s32` before the subtraction computes the same low 16 bits
for in-range coordinates, but IDO schedules the conversions differently and
does not match. Use this only when the coordinate range fits in `s16`.
