# Explicit Casts on Struct Field Access for Delay Slot Scheduling

## Problem

A function with simple struct field accesses (`alien->unk20 &= ~0x10; alien->unk6 = alien->unkE;`) produced assembly where `lw ra` (restoring the return address) was scheduled AFTER the `lh`/`sh` operations, rather than BEFORE them as in the target. The target had `lw ra` between the `lw` of `unk20` and the `lh` of `unkE`, and `sh` in the `jr ra` delay slot.

## Target Assembly Pattern

```asm
lw      t9,0x20(v0)        ; load unk20
lw      ra,0x14(sp)        ; restore ra (early!)
lh      t1,0xe(v0)         ; load unkE
li      at,-0x11           ; constant
and     t0,t9,at           ; unk20 & ~0x10
sw      t0,0x20(v0)        ; store unk20
addiu   sp,sp,0x18
jr      ra
sh      t1,6(v0)           ; store unk6 (delay slot)
```

## Current (Non-matching) Assembly

```asm
lw      v1,0x20(v0)        ; load unk20
lh      t0,0xe(v0)         ; load unkE (too early!)
li      at,-0x11
and     t9,v1,at
sw      t9,0x20(v0)
sh      t0,6(v0)           ; store unk6 (too early!)
lw      ra,0x14(sp)        ; restore ra (too late!)
addiu   sp,sp,0x18
jr      ra
```

## Solution

Adding explicit casts `(s32)` and `(s16)` on the struct field assignments caused IDO to change the register allocation and instruction scheduling to match the target.

### Non-matching code:

```c
alien->unk20 &= ~0x10;
alien->unk6 = alien->unkE;
```

### Matching code:

```c
alien->unk20 = (s32)(alien->unk20 & ~0x10);
alien->unk6 = (s16)alien->unkE;
```

Also, declaring the `AlienInstance *alien` pointer separately from its initialization (rather than using `AlienInstance *alien = &alienInstances[arg0]`) can help match register allocation.

## Root Cause

The explicit casts influence IDO's type inference and scheduling decisions. Without casts, IDO treats the operations differently which changes:
1. Register allocation (which temp registers are used)
2. When `lw ra` (the epilogue return address restore) is scheduled relative to other loads/stores
3. Whether the final store ends up in the `jr ra` delay slot
