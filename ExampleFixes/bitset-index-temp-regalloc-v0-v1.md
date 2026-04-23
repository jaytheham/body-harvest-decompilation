### Bitset index temp can flip v0/v1 ownership

When matching code like this:

```c
word = (s32 *)((u8 *)bitset + ((indexValue / 32) * 4));
*word |= 1 << (indexValue % 32);
```

IDO may keep `word` in `v0` and `indexValue` in `v1` (or vice versa), causing only regalloc diffs.

A reliable fix in one inside-gameplay function was to explicitly stage the source index first:

```c
idx = D_800E65D4;
word = (s32 *)((u8 *)D_80047F40 + ((idx / 32) * 4));
*word |= 1 << (idx % 32);
```

That single `idx` temporary forced the target register ownership/order (`v0` for value, `v1` for pointer) and resolved the remaining mismatch.
