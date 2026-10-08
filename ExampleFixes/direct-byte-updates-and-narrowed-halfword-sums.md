# Direct byte updates and narrowed halfword sums

In `func_802DDC88_25D3C8`, replacing a reused s32 counter with direct reads and increments/decrements of `alienInstances[arg0].unk24` allowed IDO to reproduce the cached alien pointer spill. The final expression also affected CFE temporaries and register allocation:

```c
D_8014DD50[sp42].unkAUnsigned = (s16)((u32)alienInstances[arg0].unk24 * 200 + D_8014DD50[sp42].unkAUnsigned);
```

The unsigned halfword alias preserves the target LHU. Explicit narrowing of the sum to s16 produced the target pointer spill at sp+0x34; putting the counter product first reproduced the target temporary registers. A compound unsigned addition instead placed the pointer spill at sp+0x30. These variants have identical stored low halfwords but different intermediate promotion and temporary allocation.

Once instruction selection and pointer spill matched, moving one unused s32 declaration from after the two s16 locals to before them shifted their offsets down four bytes without changing the frame size. The final build passed the full ROM comparison.
