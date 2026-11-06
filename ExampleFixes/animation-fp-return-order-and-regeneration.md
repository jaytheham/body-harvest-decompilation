`incorrect ASM`: In `func_8000CF4C_DB4C`, every instruction, stack home, constant and scalar register matched, but the four floating temporaries were permuted. The first conversion used `mtc1 t5,f4; sub.s f6,f16,f14; cvt.s.w f8,f4`. Three allocator spill homes at `0x48/0x4C/0x50` were already correct; adding a third copy vector instead enlarged the frame and introduced spills.

-> `code changed`: Keep two three-float arrays and the genuinely consumed early coefficient copies `y = fraction; x = fraction;`. Write all three rotation additions with the current value first, rather than the product first:

```c
rotation[0] = rotation[0] + ((targetRotation[0] - rotation[0]) * y);
rotation[1] = rotation[1] + ((targetRotation[1] - rotation[1]) * y);
rotation[2] = rotation[2] + ((targetRotation[2] - rotation[2]) * x);
```

IDO regenerates this procedure after discovering its spill area. It rewinds the instruction buffer and cleans the expression tree, but does not reinitialize the FP free list. A faithful UGEN trace showed that these three additions reverse three pairs of operand-return events in the first pass. Its ending free list changes from `f6,f4,f8,f10` to `f8,f6,f10,f4`, which becomes the next pass's initial queue. Inspect the final emission pass, not the first occurrence of a source line.

-> `correct ASM`: `mtc1 t5,f6; sub.s f8,f16,f14; cvt.s.w f10,f6`. The complete function matches, including the `0x88` frame, twelve float stack stores, all temporary registers and unchanged final `add.s` operand order. Normal US and EU ROM checksums both pass.

`incorrect ASM`: The completion assignment `channel->unkC = channel->unk26` reused the earlier converted goal Y, omitting the target's fresh `lh; mtc1; cvt.s.w` sequence and changing the regenerated procedure's temporary state.

-> `code changed`: Qualify only the completion read, leaving the ordinary interpolation read and all other state accesses unchanged:

```c
channel->unkC = ((volatile AnimChannelState *)channel)->unk26;
```

-> `correct ASM`: `lh t1,0x26(a1); mtc1 t1,f4; cvt.s.w f8,f4`, followed by the target Y store. No raw word overlay or pointer arithmetic is needed; the existing `AnimChannelState` definition is unchanged.
