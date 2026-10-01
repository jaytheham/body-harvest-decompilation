# Alien gravity: absolute speed and narrowing before negation

Matched `func_8008E978_9D928` in `src.us/overlay_gameplay/outside/9BFF0.c` with an exact assembly diff and `build/bh.us.z64: OK` using IDO 5.3 `-O2 -mips2 -32`.

The speed amplitude is the larger of the signed speed and its negation, followed by an independent minimum clamp:

```c
sp2C = -alienInstances[arg0].unk12 < alienInstances[arg0].unk12
    ? alienInstances[arg0].unk12 : -alienInstances[arg0].unk12;
if (sp2C < 0x301) {
    sp2C = 0x300;
}
```

An `else if` minimum clamp incorrectly skips the clamp when the positive speed wins. A direct ternary with the repeated negation also gives the target's separate negative temporary in `a0`, result in `a1`, and branch delay-slot move. Assigning the negation to the result variable first removes that move and the unconditional branch. Adding a separate local negative temporary increased the stack frame; reusing the airborne flag local retained the frame but put the negation in `a3`.

Keep the requested height in `arg1` (`arg1 += sp2A`) and use the amplitude local only for the speed calculation. This matches the target's argument reload and avoids keeping the height in a saved register across the final sine call.

The final conversion must narrow **before** integer negation:

```c
alienInstances[arg0].unk10 = -((s16)(
    ((f32)sins(alienInstances[arg0].unkA) / 32768.0) * sp2C));
```

Using `(s32)` instead emitted the same instructions, but the final conversion and negation used `t3/t4` instead of the target's `t5/t6`. Casting to `s16` after the negation did not fix those registers. IDO eliminates the narrowing instructions when storing a halfword, while its compiler temporaries still affect register allocation. Preserve the double-precision `32768.0` divisor and the conversion of the sine return value to `f32`.

## Type-driven gravity and the pointer spill slot

`func_8008EB20_9DAD0` also matched with the absolute-speed ternary and the
`s16` cast before final negation. Using an explicit negative temporary and
an unnecessary `u64` cast happened to produce the target registers but left
the cached instance pointer at sp+0x30 instead of sp+0x34.

Use direct `alienInstances[arg0]` field accesses instead of a named instance
pointer, and declare the locals in this order:

```c
s32 amplitude;
s32 pad; /* unused slot at sp+0x48 */
s16 terrainHeight;
s16 typeIndex;
s32 airborne;
f64 factor;
```

The resulting frame is 0x50: amplitude spills at 0x4c, terrainHeight at
0x46, typeIndex at 0x44, airborne at 0x40, and the compiler's cached
instance pointer at 0x34. Removing `pad` leaves the same frame and pointer
slot but moves the two halfwords and airborne up four bytes. Keeping the
named `f64 factor` also preserves floating-point operand/register ordering;
inlining the clamp ternaries into the multiplication changed that ordering.

Verified with an exact function diff and `build/bh.us.z64: OK`.