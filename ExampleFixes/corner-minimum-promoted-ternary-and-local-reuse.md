# Reuse corner-height locals and promote the final minimum

func_800B8688_C7638 computes the minimum of four six-bit terrain heights. The matching C keeps a named map pointer, reads two heights, computes their s16 minimum, then reuses the same two height locals for the next row. Separate locals for the second pair put the second minimum in a1 and its address in a2; reusing the first pair's locals produces the target t1 minimum and a1 address.

The final choice is a ternary assigned to a named s32, returned by the s16 function:

```c
result = firstMinimum < height0 ? firstMinimum : height0;
return result;
```

Both ternary operands promote to s32. This produces the target branch-delay copy into v1 and two return paths, including the early sign-extension of firstMinimum. Assigning into an s16 accumulator or spelling this as separate early returns changes the generated branch and return instructions.

The final mismatch was a swap between the X-coordinate sra and the Z-coordinate sll. Keeping the coordinate assignments on the same source line fixes scheduling:

```c
tileX = arg0 + 0x80; tileZ = arg1 + 0x80;
```

Use ordinary next-row array indexing, map[tileZ + 1][tileX] and map[tileZ + 1][tileX + 1]. It compiles identically to the old out-of-range second-index expressions tileX + 0x100 and tileX + 0x101. The complete ROM verified OK after this cleanup.
