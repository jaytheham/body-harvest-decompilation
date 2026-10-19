```asm
/* Incorrect ASM, func_800862B4_95264: frame 0xD8, bounds eight bytes too low. */
addiu sp,sp,-0xd8
/* ROM 0x95304 */ sw t3,0xd4(sp)
```

```c
/* Code changed: retain named signed differences and their negations.
 * Declare minX/maxX/minZ/maxZ first, then inst, i, dx, dz,
 * negDX, negDZ, absDeltaX, absDeltaZ; dist is local to the loop. */
s32 dx;
s32 dz;
s32 negDX;
s32 negDZ;
s32 absDeltaX;
s32 absDeltaZ;
/* Before */
absDeltaX = (-dx < dx) ? dx : -dx;
absDeltaZ = (-dz < dz) ? dz : -dz;
/* After */
negDX = -dx;
absDeltaX = (negDX < dx) ? dx : negDX;
negDZ = -dz;
absDeltaZ = (negDZ < dz) ? dz : negDZ;
```

```asm
/* Correct ASM: same arithmetic, target frame and bound homes. */
addiu sp,sp,-0xe0
/* ROM 0x95304 */ sw t3,0xdc(sp)
```

```asm
/* Incorrect ASM: the two endpoint registers are reversed. */
/* ROM 0x952E4 */ lw s3,0xf0(sp)
/* ROM 0x95318 */ lw s2,0xf8(sp)
/* ROM 0x95438 */ subu v0,s4,s3
```

```c
/* Code changed: preserve two value boundaries on the X endpoint.
 * Neither identity operation emits an instruction. Both are required. */
if (alienTypes[alienInstances[arg0].typeIndex].unk54 & 0x00400000) {
    return 0;
}
arg4 |= 0;
/* Compute the X and Z min/max bounds. */
arg4 |= 0;
for (i = 0; i < 0xFF; i++) {
    /* Collision checks and six-s64-argument distance calls. */
}
```

```asm
/* Correct ASM: s2=X endpoint, s3=Z endpoint, s4=start X, s5=start Z. */
/* ROM 0x952E4 */ lw s2,0xf0(sp)
/* ROM 0x95318 */ lw s3,0xf8(sp)
/* ROM 0x95438 */ subu v0,s4,s2
```
