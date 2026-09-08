### Direct array CSE plus a block-scoped phantom fixes split stack zones

In a large non-leaf function, a named `AlienInstance *alien` can preserve the broad logic but
still cause two kinds of mismatches:

- a redundant field reload around a later branch, changing a `li`/branch delay-slot sequence;
- declared locals and compiler spill temps landing four or eight bytes above the target slots.

Replace the named pointer with direct `alienInstances[arg0]` accesses. IDO can still CSE the
entry address into `s0`, but it no longer reserves the pointer's user-variable home. In
`func_802DCADC_1955EC`, this made the complete instruction sequence structurally exact and put
the early `s16` locals at their target offsets.

If locals used only by a later phase remain too high, put that phase in its own C89 block and
declare its locals at the start of the block. A four-byte unused local before the real block
locals can preserve the target gap:

```c
{
    s32 sp74; /* phantom home; no explicit use needed */
    u16 angle;
    s32 sp6C;
    s32 sp68;
    s32 sp64;

    /* later control flow using angle and the three address-taken words */
}
```

The combination matters. Function-scoped padding alone may grow an aligned frame and move the
early locals with it; block scope lets IDO place the later declaration zone below the already
correct early locals.
