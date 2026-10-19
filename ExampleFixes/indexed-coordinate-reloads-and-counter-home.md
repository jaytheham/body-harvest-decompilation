## Incorrect ASM

In `func_8012B26C_13A21C`, IDO inserted old-position reloads in X/Y/Z order in both motion branches:

```asm
lwc1 f12,0(s6)
lwc1 f0,4(s6)
lwc1 f14,8(s6)
```

## Code changed

Before the turning branch's `deltaX` calculation, retain discarded indexed X and Z tests, replacing the single indexed X test after the motion branches:

```c
if (D_8015EB90[i].unk0) {}
if (D_8015EB90[i].unk8) {}
deltaX = /* existing coss calculation */;
```

These two expressions reserve two float spill slots. Remove the separate final declaration of the eight-shot burst counter and use its earlier, otherwise unused signed word slot. The named stack homes remain unchanged, and the local block shrinks by four bytes. This offsets the extra float slot; alignment keeps the subsequent eight-byte caches unchanged.

## Correct ASM

Both reload groups now use X/Z/Y order. The motion caches also retain their target offsets after the counter home change:

```asm
lwc1 f12,0(s6)
lwc1 f14,8(s6)
lwc1 f0,4(s6)
...
swc1 f16,0xb8(sp)
...
swc1 f2,0xbc(sp)
...
swc1 f18,0xb4(sp)
```
