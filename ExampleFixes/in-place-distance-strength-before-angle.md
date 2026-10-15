# Direct field reads and in-place strength preserve IDO allocation

Java `func_802DE0C8_1F6DD8` is matched: diff score 0 and the full ROM
build reports `build/bh.us.z64: OK`.

The final register-only mismatch came from caching the vehicle X/Z
coordinates in named scalar locals. Read `D_80052B34->unk0` and `unk4`
directly in both pairs of differences instead. IDO still shares the
loads across the proximity and direction calculations, but their
optimizer expressions differ from named local copies. This places the
squared-distance sum in v1 and both pairs of differences in a0/a1.
Use X then Z assignment order with these direct field reads.

```c
dx = D_80052B34->unk0 - x;
dz = D_80052B34->unk4 - z;
distanceScale = dx * dx + dz * dz;
if (distanceScale < radiusSquared &&
    !(D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE)) {
    distanceScale = radiusSquared - distanceScale;
    dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
    dz = alienInstances[arg0].unk4 - D_80052B34->unk4;
    /* Nested angle call, then strength arguments using distanceScale. */
}
```

Update the distance variable in place. With separate squared-distance
and strength locals, IDO preserved the squared distance across the
angle call and recomputed the subtraction afterward. The in-place
update produces the target subtraction and spill before the call.
Keep the angle call nested in the knockback helper's arguments; a
separate angle assignment moved the argument copy before the vehicle
pointer reload.

For the earlier angle comparison, keep the raw helper result in a
short and assign `BH_ABS((s16)(angle - heading))` to a named s32 maximum.
Assigning the narrowed difference to the short first changed the
maximum's result register.

The matching declaration layout puts the maximum, dx, and a named
constant radius squared between the joint array and the three word
position outputs. Declare dz inside the result-2 block. This gives the
0x98 frame and strength spill at sp+0x68 without padding declarations.
Moving both deltas to the outer scope instead reduced the frame to
0x90. The coordinate outputs are s32 values, not aliased pairs of shorts.

The helper prototypes supply the required conversions for `y + 5`,
integer angle arguments, the float strength, and random rotations;
explicit casts at those call sites were unnecessary.

Stock IDO's diagnostic option `-Wo,-zdbug:6` prints actual color decisions
in `uoptlist`; debug level 2 prints expression tables without those
assignments. Diagnostic output helped distinguish named-variable webs
from shared field-load expressions. Always verify source changes with
the normal project build and ROM checksum.
