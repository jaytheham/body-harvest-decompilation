# Same-line assignment and call change halfword-save scheduling

In `func_800C0678_CF628`, the delta is copied to an addressable `s16` local
before a palette call and read through a local pointer afterwards. This preserves
the target's `sh`/`lh` spill rather than a promoted word spill.

With the assignment and call on separate lines, IDO placed the save before the
second argument's `andi`:

```c
savedDelta = delta;
func_800049D4_55D4(color, color);
```

Putting just these two statements on the same line restored the target order:

```c
savedDelta = delta; func_800049D4_55D4(color, color);
```

The second argument's `andi` now appears at ROM `0xCF82C`, followed by the
halfword save at `0xCF830`; the call remains at `0xCF834`. The frame and spill
offsets remain unchanged. This reduced the diff score from 3700 to 3505.

Putting the entire function on one line also fixed this save order, but worsened
other instructions. Isolate the relevant statements rather than flattening the
whole function. The enclosing function remains unmatched.
