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

### Y destination before flag updates fixes allocation without changing scheduling

In `func_800AB570_BA520`, the instruction order and stack layout already
matched, but the flags load, masked flags, and Y destination used the wrong
temporary registers. Assigning `unk16 = targetY` immediately before the flag
clear fixed all remaining differences:

```c
alienInstances[arg0].unk24 = 0x14;
pad = 0x64;
alienInstances[arg0].unk38 = pad;
alienInstances[arg0].unk16 = targetY;
alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_UNKI | ALIEN_FLAG_TARGET_PT |
    ALIEN_FLAG_TARGET_VEHICLE | ALIEN_FLAG_TARGET_OBJ);
alienInstances[arg0].unk14 = targetX;
alienInstances[arg0].unk18 = targetZ;
alienInstances[arg0].unk20 |= ALIEN_FLAG_TARGET_PT;
alienInstances[arg0].unk48 = 0xA0;
```

IDO still schedules the Y store last. The earlier source assignment puts its
load in `t9`, the flags load in `t3`, and the masked flags in `t4`. Moving
the Y assignment after the speed store instead changed branch scheduling
and shortened the function. Verification: full ROM build reported
`build/bh.us.z64: OK`, and the function diff had no differences.

### Flag operations before a coordinate store can also match a later store order

In the final steering block of `func_800AC5BC_BB56C`, write both flag
operations before the X destination in C:

```c
alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_TARGET_PT |
    ALIEN_FLAG_TARGET_VEHICLE | ALIEN_FLAG_AWAY | ALIEN_FLAG_TARGET_OBJ);
alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKD | ALIEN_FLAG_TARGET_PT;
alienInstances[arg0].unk14 = forward;
alienInstances[arg0].unk18 = dx;
```

IDO still schedules the stores as cleared flags, X destination, then set
flags. This source order allocates the OR result to `t8` and the reloaded X
to `t2`, exactly matching the target. Placing the X assignment between the
two flag operations gives the same instruction sequence but uses `t2` for
the OR result and `t9` for X. At this checkpoint the whole final block
matches; four FP-register instruction differences remain near the start of
the function, so the function and ROM are not yet fully matched.
