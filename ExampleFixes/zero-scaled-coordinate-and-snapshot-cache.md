### Narrow the comparison expression, not the stored snapshot

America `func_802D62A0_2559E0` matches all 199 instructions and the full US ROM with a word state snapshot, an independent byte snapshot, and narrowing in each comparison:

```c
s32 state;
u8 animation;
/* The single-iteration block also controls the optimizer's block boundary. */
do {
    state = alienInstances[index].unk36;
    animation = alienInstances[index].unk36;
} while (0);
if (((u16)(s16)state & 0xFF) < 4) {
    /* coordinate helpers */
}
```

Repeat `((u16)(s16)state & 0xFF)` in the later comparisons. Keep `animation` for the animation table index. Copying the word into the byte variable instead of reading the field independently creates an unwanted word spill or removes the byte store.

The apparently redundant narrowing casts are necessary for IDO 5.3. With a `u16` local, UOPT assigns its narrowed value to `v1`; the final assembly differs in five register operands. A signed halfword local introduces a sign-extension scratch temporary, shifting later scratch registers. Putting the unsigned-after-signed narrowing in the comparison makes its intermediate an expression rather than a stored local. This gives the target state load in `t5`, mask in `t6`, next joint index in `t7`, and cached mask at `sp+0x40`, without padding locals. Casting the word assignment instead of the comparison reproduces the five-register mismatch.

### Coordinate grouping and branch scheduling

Keep the zero-scaled cosine on the right of the final source addition:

```c
z = (s32)((baseZ + offset * ((f32)sinValue / 32768.0)) +
          (((f32)coss(angle) / 32768.0) * 0));
```

IDO evaluates that cosine term first, then the base-plus-sine expression, and emits the target final addition. Putting the zero term first in C changes the floating-point schedule. Keep the signed halfword angle and trig return for the target `sh`/`lh` operations. The transform helpers take X + 23, computed Y, and computed Z, rather than the joint angle.

Load the alien type index inside the `state == 3` branch so the type-table `lui` occupies the target branch delay slot.

Verified with `tools/make.ps1`: `build/bh.us.z64: OK`; function diff score 0.
