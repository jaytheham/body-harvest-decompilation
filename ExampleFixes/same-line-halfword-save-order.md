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

## Follow-up checkpoint

The retained C0678 body reaches score 3410 with the five lightning-only constants expressed as literals, an identity XOR on the narrowed delta, masked byte guards in the two restart branches, and a separate saved-delta read before subtracting it from seven. Native int local permutations, volatile/signed byte counter declarations, packed high-halfword union views, and callback return-type changes did not close the residual. The callback dispatcher invokes registered callbacks with no arguments and ignores a return value; preserve the void declaration. Restore the five placeholders while using GLOBAL_ASM; delete them when enabling this C body. No new files are needed for the literal constants themselves.
