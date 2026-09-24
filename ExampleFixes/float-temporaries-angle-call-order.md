# Explicit float temporaries to match angle-call evaluation order

Function: `func_8007D548_165608` (`src.us/overlay_gameplay/inside/1648A0.c`).

When an angle helper receives two expressions that each subtract an integer coordinate (converted to `f32`) from a stored float, IDO may evaluate the second argument first. If the target computes the first coordinate conversion and subtraction before the second, split both expressions into `f32` locals in source order and pass those locals to the helper:

```c
f32 xDiff;
f32 zDiff;

xDiff = originX - (f32) targetX;
zDiff = originZ - (f32) targetZ;
angle = angleHelper(xDiff, zDiff);
```

For this function, that ordering reproduced the target assembly exactly. The declarations also need to remain at the top of the block for C89.
