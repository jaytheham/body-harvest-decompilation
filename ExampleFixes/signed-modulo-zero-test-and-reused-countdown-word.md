# Signed modulo zero tests and reused countdown words

Matched Siberia `func_802DEFB4_2C13E4` (ROM `0x2C13E4`).

IDO simplifies both `if (phase % 8 == 0)` and a named word remainder compared with zero into an unsigned bit-mask test. The target instead calculates the signed remainder with `bgez`, `andi`, a negative-case subtraction, then `bnezl`. This equivalent condition retains that sequence without extra narrowing instructions:

```c
if ((u32)(phase % 8) < 1U) {
    /* emit particles */
}
```

A negative signed remainder converts to a large unsigned value, so the condition still selects only zero. Casting the remainder to `s16` also retains signed remainder arithmetic, but adds an unwanted `sll/sra` pair. A one-case switch still simplifies to a bit-mask test.

The final register differences throughout the function disappeared by reusing the existing countdown word for the subtraction before each division:

```c
phase = 0xC8 - alienInstances[arg0].unk48;
alienInstances[arg0].unk4C = (s16)((f32)sins((phase << 14) / 0x28) / 32768.0 * 10.0);
/* mutually exclusive later branch */
phase = 0xA0 - alienInstances[arg0].unk48;
phase %= 20;
```

Inline subtractions allocated their results to `a0` and `t6`; the explicit reused word selected the target `v1`, fixed subsequent scratch-register reuse, and matched the complete function.

Other necessary details:

- Put the active parent-flag branch before the idle animation-reset branch.
- Compute the parent pointer before traversing the joints, letting the parent multiply overlap the initial joint loads.
- Read the second joint through the first joint's signed-short local, rather than repeating its struct field expression. This keeps the first joint value in the target anonymous `t2` instead of a cached `v0`.
- Declare three signed-short joint indices, then the parent pointer, countdown and coordinate words, then the two float components. Index the joint array directly; a named joint pointer occupies an extra home slot. This gives the target 0x80 frame, coordinates at 0x6C/0x68/0x64, floats at 0x60/0x5C, and the compiler's joint-pointer spill at 0x54.
- Use the existing unsigned halfword angle member with signed integer thresholds `0x8000` and `0x8001`. An unsigned threshold changes `slt` to `sltu`; writing the signed alias can interfere with unsigned store forwarding.
- Negate the divided sine before multiplying by 10.0 in the closing phase; negating the product reverses `neg.d` and `mul.d`.
- Let the `u16` trig parameters truncate their arguments implicitly. Retain the conversion of each trig result to `f32` before the double division.

After removing redundant double and animation-index casts, the function diff remained zero and the whole-ROM checksum reported `build/bh.us.z64: OK`.

Comet func_802DDFFC_32214C also matches this signed remainder form after masking the animation result to a byte. Reuse the now-consumed s16 arg1 parameter for the raw return and subsequent u8 conversion, and preserve a separate u8 result across the attack call. A named s32 result matched all registers but added eight bytes to the frame and shifted the coordinate array, byte spill and alien pointer. Reusing arg1 restored the exact 0x30 frame and all offsets.
