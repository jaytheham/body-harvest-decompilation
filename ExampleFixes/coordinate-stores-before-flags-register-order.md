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


### Store creation order sets the whole temp band (particle-burst init)

In `func_800840F0_16C1B0` every opcode, every stack home and the frame already
matched (`ins_diff -noregs` delta +0); the residual was 16 rows of *pure
register names* (score 80). The temps are not allocated in emission order - they
are allocated in the order the C source *creates* each value, and the target's
own temp numbers read that order back directly:

    t0=arg6  t1=arg0*4  t2=arg1  t3=arg1*4  t4=arg2  t5=arg2*4  t6=arg3  t7=2  t8=arg4

so the value-producing stores are written `unk2 = arg6` FIRST, then `unk8`,
`unkA`, `unkC`, then `unk14`, then `unk12`, then `unk11` - while IDO still emits
the stores in address order (0x8, 0xA, 0xC, 0xE, 0xF, 0x10, 0x12, 0x2, 0x14,
0x11). Reading assembly order back as source order gives the wrong permutation.

Measured: that order **0**; the address-ordered spelling 80; every other
permutation swept 20-1275. Levers that did not transfer: removing the no-op
`arg5 += 0;` measured 360 (the statement is load-bearing - it keeps the count
parameter in its home); `u8 count` 40. The halfword store into a byte-declared
field uses the repo's existing `*(s16 *)&entry->unk14 = ...` idiom (as in
`overlay_level/comet/318E20.c`).
