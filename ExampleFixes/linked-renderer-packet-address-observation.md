`incorrect ASM`

In `func_800D1C24_E0BD4`, the SDK image packet's named pointer had three references and displaced the display-list global from `s2` to `s3`. Writing only the high word through `D_8005BB2C[-1]` reduced the captured pointer to two references and fixed the saved registers, but subsequent temporary registers were shifted:

```asm
lui t7,0x101
addiu t7,t7,-0x4b10
/* Later texture setup: */
lui t4,0xf590
andi t5,v0,3
```

-> `code changed`

Expand this texture load, retaining the six SDK macros after its image command. Capture the packet for the low word, write its high word through the previous display-list entry, and include a discarded observation of that entry's address in the high-word expression:

```c
Gfx *imagePacket = D_8005BB2C++; D_8005BB2C[-1].words.w0 = 0xFD900000 + ((u32)&D_8005BB2C[-1] * 0); imagePacket->words.w1 = (unsigned int)K0_TO_PHYS(&D_100B4F0[(func_800038E0_44E0() % 4) << 9]);
```

Keep the packet block and following six SDK calls on one physical source line, as in the retained source. The zero product changes the compiler's handling of the address value without emitting arithmetic. All stores retain their values and sequence. A function-local SDK macro override was used only for investigation; the committed implementation directly expresses this one texture block and changes no SDK definitions.

-> `correct ASM`

```asm
lui t6,0x101
addiu t6,t6,-0x4b10
/* Later texture setup: */
lui t3,0xf590
andi t4,v0,3
```

The packet change alone improves the full native diff from 328 to 50. All 542 instructions have the target order, `0x100` frame, and stack homes. Nine instruction words still differ: the high store uses `-8(t9)` instead of `0(s3)`, the next-position pointer uses `s3` instead of `s0` in five instructions, and the final Z conversion and its two consumers use `f0` instead of `f2`. The enabled C ROM SHA1 is `c95860b96e23b9a5eb12b558381f0527e2fbc712`.

The function remains `NON_MATCHING`; the full native US ROM checksum passes with its assembly fallback selected.

`incorrect ASM`

After the packet correction, the next-position pointer still occupied `s3`:

```asm
addu s3,t3,t4
lh t5,0(s3)
/* Later coordinate reads also use s3. */
```

-> `code changed`

Separate the position reads from the final vertex-packet commands with an empty optimizer region immediately before the fourth vertex. Keep this boundary and the first vertex write on the same physical source line:

```c
D_8005BB34++;
if (1) {} D_8005BB34->v.ob[0] = nextX2;
```

The earlier allocation trace showed that the position expression and the cached display-list cursor overlapped only in the block containing the last coordinate calculations and final graphics commands. The boundary makes their lifetimes separable without emitting an instruction.

-> `correct ASM`

```asm
addu s0,t3,t4
lh t5,0(s0)
/* All four later coordinate reads now use the target s0. */
```

The combined retained partial scores 25, with all 542 instruction positions, the `0x100` frame, and stack homes matching. Four words remain: the image high-word store uses the equivalent `-8(t9)` address instead of `0(s3)`, and the final Z conversion and its two consumers use `f0` instead of `f2`. The function remains `NON_MATCHING`.
