Incorrect ASM (`func_800AB8CC_BA87C`): the helper call precedes the parent-height read, and the scaled height and parent height are combined before one `sh`.

Code changed: cache the parent height in a word before calling the coordinate helper, assign the quotient to the child halfword, then add the cached height in a second statement.

```c
parentHeight = parent->unk2;
func_8008FF54_9EF04(parent->unk25, &helper0, &helper1, &helper2);
alienInstances[(s32)arg0].unk2 =
    (parent->unk2C * (helper1 - parentHeight)) / 15;
alienInstances[(s32)arg0].unk2 += parentHeight;
```

Correct ASM: `lh v0,2(v1)` before the helper `jal`, followed after division by `sh childY`, `lh childY`, `addu` with the cached parent height, and a second `sh childY`. This fixes the height-update sequence; the complete function remains NON_MATCHING while allocation is unresolved.