## Incorrect ASM

```asm
lw    t8,0(t0)
...
subu  v1,t8,a1
```

## Code changed

In `func_8011C0CC_12B07C`, replace the single signed-width round trip at the
loop's X-coordinate read with five:

```c
dx = ((s32)(s64)(s32)(s64)(s32)(s64)(s32)(s64)(s32)(s64)points[index * 2] - arg1) >> 2;
```

Every conversion preserves the original signed 32-bit value. The subtraction
and shift remain signed 32-bit operations. One round trip left the two words
above unmatched; two and three scored 115, four scored 60, and five scored zero
with no additional instructions. The stock build produced the exact US ROM
SHA-1 `bbb6666f5014a473747ee4145f036d9fb25d7348`.

A validated trace of the single-round-trip version showed a temporary integer
register pair allocation. The five-round-trip result is verified by the linked
ROM; its precise allocation sequence was not traced.

## Correct ASM

```asm
lw    t9,0(t0)
...
subu  v1,t9,a1
```
