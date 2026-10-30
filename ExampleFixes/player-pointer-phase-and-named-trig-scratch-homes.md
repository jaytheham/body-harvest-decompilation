`incorrect ASM`: The partially matched `func_800FB504_10A4B4` initially has no saved general register: the player pointer starts in `a0`, `ra` is saved at `sp+0x1C`, and the projected Y coordinate spills across the final sine/cosine calls. Simply retaining an extra use of Y does not select `s0`: the measured caller-save cost is 3, while opening `s0` costs about 36.95. Adding the player-pointer phase selects `s0`, but the frame then grows from `0x98` to `0xA0`; an implicit short trig-result home occupies `FP-104` instead of the target's `FP-94`.

`code changed`: Reuse the existing signed-word scratch through a typed union rather than adding another pointer local. Refresh the pointer before each coordinate helper, preserving the original global reloads after vehicle-type writes:

```c
union {
    s32 value;
    VehicleInstance *player;
} work;
/* Same declaration position as the old signed-word scratch. */
work.player = D_80052B34;
if (!work.player) {
    D_80158FF4 = NULL;
    return;
}
type = &vehicleTypes[work.player->unk1A];
/* ... */
work.player = D_80052B34;
func_80128504_1374B4((AlienInstance *)work.player, 1,
                    &worldX, &worldY, &worldZ);
```

After all original top-level locals, place the expired `s32 hasPitch` and `s16 angleDiff` locals, in that order. Their original homes remain `FP-92` and `FP-94`. Reuse `angleDiff` for the first heading trig result and `cosVal` for the second trig result and other immediate conversions. Naming all these short helper results removes four bytes of implicit homes without adding locals. Continue to use `work.value` for the projected Y coordinate. A separate pointer local does not reproduce this allocation.

For the cubic stick calculation, explicitly assign the full product and shifted result back to the existing word scratch before subtracting from the short clamp:

```c
diff = D_8004758A;
diff = diff * diff * diff;
diff >>= 8;
pitchClamp -= diff;
```

`correct ASM`: These changes reproduce the target prologue and its opening 180 instructions, including the full stick-control region:

```asm
addiu   sp,sp,-0x98
sw      s0,0x20(sp)
lui     s0,0x8005
lw      s0,0x2b34(s0)
/* ... */
sw      ra,0x24(sp)
/* Cubic stick product: */
multu   v0,v0
mflo    t7
nop
nop
multu   t7,v0
mflo    v0
sra     t8,v0,0x8
```

The final nested trig call now stores its first short result at `sp+0x3A`, and projected Y remains in `s0` across the next two trig calls. The complete function is still unmatched: this documents verified instruction ranges and frame/home corrections, not a full-function match. Native and diagnostic compiler objects were checked for equality while measuring the relevant allocation decisions.
