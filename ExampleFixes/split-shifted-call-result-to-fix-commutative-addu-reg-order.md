### Split shifted call result into a local to stop v0 dominating a commutative add

When matching a pattern like:

```c
field = (s16)((field + (func() >> 8)) - 0x80);
```

IDO may keep the shifted call result as the "dominant" operand and assign it the first register in the later `addu`, producing the wrong register order even though the instruction sequence is otherwise correct.

If the target wants the struct/stack-loaded operand first, split the shifted call result into its own local first:

```c
temp = func() >> 8;
field = (s16)((field + temp) - 0x80);
```

This preserved all surrounding codegen in `func_800ACE40_BBDF0` while fixing the final remaining mismatch from score 10 to 0.