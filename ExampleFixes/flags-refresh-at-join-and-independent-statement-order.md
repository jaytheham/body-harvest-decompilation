# Refresh flags at the branch join, and preserve independent source order

Java `func_802DD5CC_1F62DC` matches with the complete ROM checksum passing
and function diff zero. No ID pointer or padding locals are needed. Passing
the byte ID normally produces its required normalized incoming-slot spill.

The last ordering mismatch was a store followed by a copy of the stored
flags. Updating a scalar flags cache in place before writing the field
put the copy before the store. Writing the field and refreshing the cache
inside the same branch instead changed register allocation. Refresh the
flags cache at the join, after the conditional update:

```c
flags = alien->unk20;
if (flags & ALIEN_FLAG_UNKE) {
    /* Select the joint and update its coordinate. */
    alien->unk20 = flags & ~ALIEN_FLAG_UNKE;
}
flags = alien->unk20;
if (flags & ALIEN_FLAG_UNKD) {
    /* Animation update. */
}
```

IDO shares the field value on both paths. On the update path, it emits the
word store and then the register copy; it adds no field reload at the join.
This is preferable to forcing source locals into memory through their
addresses. A verified stock AS1 diagnostic showed that the copy/store
ordering was already present in UGEN output; diagnostic-on/off objects
were byte-identical, so source value flow was the useful lever.

Other independent source-order changes completed register allocation:

- Cache the type index after constructing the complete model-node chain.
  The load still schedules among the node lookups but uses the target t2.
- In the successful attack block, update the selected joint coordinate
  before setting the instance flag. AS1 interleaves the independent work,
  while the source order gives the target address and OR temporaries.
- Set the timer before assigning the incremented byte counter. Test the
  byte field directly after storing it. This gives t2 for the increment
  and t9 for the timer literal without an extra narrowed word copy.

Use direct array access for the instance Y-coordinate store when reading
`D_80222A70` both for the offset position and the particle helper's height.
The named instance-pointer store caused an additional global read; the
array store lets IDO share the height in t0. Cache the instance counter in
the existing word temporary before its remainder test, reload it after the
particle helper, and use that refreshed value for the increment. This
keeps the counter in v0 instead of adding an early load and register copy.

The negative divisor in `value % -4` is significant for this compiler:
changing it to positive four removes the signed-remainder adjustment and
fails the target comparison, even with the cached word counter. The
zero-remainder behavior is equivalent, but the generated sequence is not.

The model-transform buffers are s16[3] input and s32[3] output. Feed the
narrowed output back into the input before transforming through the root
node; do not alias pairs of shorts as words. The unused byte/short padding
in the draft was redundant with natural buffer alignment and was removed.
