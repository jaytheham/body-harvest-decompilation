# Reuse coordinate locals across successive distance calculations

`func_800A2D98_B1D48` initially had the correct 440-instruction sequence and
0x90 frame, but nine floating-point register operands differed. Its incoming
X coordinate occupied f16 instead of f0, while the first distance's X and Z
differences occupied f0/f2 instead of f2/f16.

Use three float locals for all three stages: the incoming coordinates, the
vehicle-to-point differences, and the camera-to-point differences. Reassign
the same locals before both `sqrtf` calls:

```c
dx = arg0;
dy = pointY;
dz = arg2;
/* Store these coordinates in the reticle head. */

dx = D_80052B34->unk0 - arg0;
dy = D_80052B34->unk2 - pointY;
dz = D_80052B34->unk4 - arg2;
sqrtf(dx * dx + dy * dy + dz * dz);

dx = D_80047954 * 4.0f - arg0;
dy = D_80047958 * 4.0f - pointY;
dz = D_8004795C * 4.0f - arg2;
distScale = sqrtf(dx * dx + dy * dy + dz * dz);
```

Keep the original coordinate arguments for subsequent camera-distance and
bearing expressions. Declaring three additional delta locals first fixed all
instructions and registers but enlarged the frame to 0xA0. Reusing the existing
coordinate locals also restored the frame and every stack displacement.
The verified declaration order is `flatDistI`, `dx`, `dz`, `dy`, `distScale`,
the signed-halfword Y copy, and the word-sized pulse local.

This changes IDO's allocation through variable reuse, without introducing
extra operations. Declaration permutations, repeated coordinate assignments,
casts, and independent one-use delta locals did not resolve the original
register cycle.

The final source retains its primitive-color comma expressions. Its final
rotation/scale updates retain an empty camera-Z test on their shared source
line. Removing that test changes scheduling and scores 65 instead of
zero. Preserve the unsigned-byte-to-float cast in the final pulse calculation;
the other redundant coordinate, distance, and narrowing casts were removed.

Verified with `tools/make.ps1` reporting `build/bh.us.z64: OK` and
`tools/diff.ps1 func_800A2D98_B1D48 func_800A3490_B2440 --show-score` reporting
zero differences.
