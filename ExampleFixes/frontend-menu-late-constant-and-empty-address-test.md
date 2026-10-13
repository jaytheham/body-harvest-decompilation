# Frontend menu constant scheduling and saved registers

Matched `func_8007B618_4BAC8` in `src.us/overlay_gameplay/frontend/40720.c` using IDO 5.3, `-O2 -mips2 -32`. The final full ROM build reports `build/bh.us.z64: OK`.

The target initializes a cached integer one in s4 immediately before loading the initial oscillation byte into s3. A plain `one = 1` reverses those two instructions. Native `int` and a late-folding expression retain the target order:

```c
selection = tempOsc;
one = (int)(selection * 0) + 1;
sp3D = sp3E;
oscillation = sp3D;
```

Keep the enclosing button test, these assignments, the empty oscillation test, the do-loop opening and its first function call on one source line. Splitting this setup changes IDO's scheduling. Use the named `one` in both selection comparisons, the loop's drawing call, the start-release comparison and the final selection comparison. Comparing the release flag against a literal introduces a separate immediate and changes the branch delay slot.

With those instructions correct, the constant and oscillation still occupy the wrong saved registers. These two empty tests disappear from the emitted instructions but reproduce the target allocation:

```c
oscillation = sp3D;
if (oscillation) {}
do {
    func_800791A0_49650(one);
    if (&D_8005BB2C) {} tempOsc = oscillation;
    /* remaining menu work */
} while (func_80005B30_6730() == 0);
```

The oscillation test alone moves the display-list address to s4 and one to s2. The address test restores the display-list address to s2, one to s4 and oscillation to s3. Each test has no side effects. A test of the pointer value `D_8005BB2C`, or a multiplied address expression, produces different results.

The target frame is 0x48. Two unused word locals retain that frame, a volatile byte retains the target stack-byte load and final store, and the counter snapshot and start-release flag are u16. The timer is s32 with an explicit 0xFFFF mask after decrement. `selection = selection * 0 + 1` retains a literal load when selecting the other option, rather than replacing it with a move from the cached one.

The stack byte is read before any assignment in the original assembly. Initializing it would change the target; volatile preserves its observed load/store behavior. These source forms are compiler matching constraints, not a proposed design for new menu code.

Frontend reset func_8008F574_5FA24 remains guarded at score 20: LI s0,255 and LI a1,40 are reversed, with every other instruction exact. The field-times-zero saved-color expression preserves the three global-base registers; a plain constant scores 911. Giving the grey color a similar late-folding expression restores immediate order but rotates the bases and grey value (110); adding a coordinate-field-times-zero flag initialization preserves the coordinate base but leaves a three-register cycle (80). All 120 declaration permutations were neutral. Typed literals, equivalent integer operators, color-store chains, initialization placement, dead initializations, existing RGB field views, and empty-address tests did not close it. Physical line joining changes coordinate-store order but leaves the two LI instructions reversed, so it does not establish a line-owned residual for that pair. No experimental implementation was retained.

## Menu-entry fade reset used as a zero array index

func_800823D8_52888 matches all 292 instructions and the full ROM checksum. A standalone fade = 0 before the first matrix helper emitted SH zero to the fade home but discarded the redundant MOVE t1,zero required by the target. Move that reset into the destination array index: func_800039D0_45D0(&spA8, &spA0, &sp98, &D_8005BB38[fade = 0]). The index remains zero, while IDO retains both the halfword store and register reset before the call. Multiplication by zero and empty fade/address tests did not recover the missing instruction. This uses existing typed matrix-array access and changes no rodata or frame offsets.
