### Coordinate assignments before flag updates determine temporary registers

In `func_802D64D0_18EFE0`, IDO schedules the flag load and bit operations
before coordinate stores, even when the C assigns coordinates first:

```c
alienInstances[alienId].unk0 = buildingInstances[0x61].xCoord + 0x80;
alienInstances[alienId].unk14 = buildingInstances[0x61].xCoord + 0x600;
alienInstances[alienId].unk20 |= ALIEN_FLAG_TARGET_PT;
alienInstances[alienId].unk20 &= ~ALIEN_FLAG_PLAYER;
alienInstances[alienId].unk24 = 2;
```

The coordinate temporaries receive `t8` and `t1`, while the flags load and
OR result receive `t9` and `t2`. Moving the flag set before either coordinate
assignment keeps the scheduled instruction order but changes these registers.
Moving the flag clear before the coordinates also moves its store too early.
When only registers differ in a scheduled block, source assignment order can
still explain the mismatch; assembly order alone does not reveal source order.

The same function needed a separate `case 6` timer phase reached by fallthrough
from `case 5`, with `if (D_80157F8E++ >= 0x33)`. Comparing after a separate
increment instead reads the incremented value and generates a different load
and comparison. The following delay and completion phases are cases 7 and 8.

Removing the `(u8)` cast from `func_8007A198_89148(alienId)` was also necessary:
its declared argument is `s32`, and the target passes the full allocation result.
