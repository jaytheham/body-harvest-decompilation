# Single-double aggregate constants and expression temporaries

During work on `func_801052E8_114298`, the steering coefficient at
`D_80144B78_153B28` was declared as a one-element `const f64` array.
Splitting the global steering read into a named float and then multiplying
preserved the instruction order, but selected different floating-point registers.
Using the combined expression with the array loaded the coefficient too early.

Changing the declaration to a scalar `const f64` made the combined expression
produce the exact target floating-point instruction sequence and registers.
However, IDO folded the scalar into a literal pool, removed the original data
object, and shifted subsequent data addresses.

The existing one-double aggregate type used by nearby matched constants solved
both problems:

```c
const ShadowGeometryConstant D_80144B78_153B28 = {0.1666666667};
/* ... */
speed = D_80158E5C * D_80144B78_153B28.value;
```

This preserves the original eight-byte object and its address while generating
the scalar-expression instruction schedule. The coefficient is approximately
one sixth; preserve the original decimal initializer exactly.

Separately, assigning the later force calculation to a different float local
from the steering calculation selected target `f0` instead of `f14`, without
changing the calculation or stack layout. Named temporaries can affect register
allocation beyond the expression in which they first appear.

These changes were verified with the normal full-ROM build and function diff.
The final complete function passes the normal full-ROM checksum with these
expression forms retained.

## Interior NPC camera: anchor base and reused scratch slot

func_800804E0_1685A0 matches without source splitting. Represent the eight-byte room camera anchor as InteriorRoomAnchor within InteriorRoomData, and declare the two stored NPC coordinates u16. Cast the coordinate loads through u32 before float/double conversion to preserve the unsigned adjustment branches.

Use a leading f64 scale initialized to 96.0 and spell the final half-scale factors as (f64)0.5f. Ordinary 0.5 literals let GVN keep the initial and final half-scale in one register, forcing saved floating registers; the float-to-double form rematerializes the final half-scale in f2. An empty scale check perturbs the setup order and must be omitted.

A named anchor pointer reproduces the base +0x28 instruction but reserves a four-byte home, growing the frame from 0x18 to 0x20 and moving the scratch slot from zero to four. Direct nested struct accesses fold that base increment away. Inline typed accesses through (InteriorRoomAnchor *)(s32)&room->anchor retain the compiler-generated base and avoid the pointer home.

Reuse the existing CameraInterpolationStep union for the previous Y/Z coordinate: assign value from the source field, then value = reload before interpolation. This produces one stack store and one reload per coordinate, while ordinary value reads share the reloaded register. A volatile scalar causes repeated reads; copying it to separate scalar locals adds stores or saved registers. The union gives the exact sp+0 accesses, registers, and 0x18 frame. Full ROM checksum OK verifies the result.
