## Incorrect ASM

`func_800CABC8_D9B78` lacked the opening and per-particle closing pipe syncs. Nested root/leader lookups also allocated their signed indices to scratch registers instead of the target's `v0` and `v1`. After fixing setup and floating-point bindings, array-based RGB components still packed blue before red and green:

```asm
lbu t8, 8(a2)
lbu t7, 6(a2)
sll t9, t8, 8
sll t8, t7, 24
or  t6, t9, t8
lbu t9, 7(a2)
```

Separate source lines for the first vertex's coordinates also scheduled its Y truncation before the Z addition.

## Code changed

Name `rootIndex` and `leaderIndex` before indexing the particle array. Use the existing typed emitter age, comparing `(u16)leader->spurtEmitter.age <= 0`, and restore both missing pipe syncs.

Use indexed child fields for position and size, retaining a child pointer for the color commands' alpha. Inline the repeated signed-size-to-float expression in the six basis products instead of caching a separate scale local; IDO shares the conversion and assigns the target FPRs.

Represent the root payload as `EffectEmitterColorState`: a `Vec3s` position followed by two `EffectRgb` values named `primitive` and `environment`. Pass their scalar `r`, `g`, and `b` fields to the ordinary SDK color macros. This changes IDO's packing order without manual packet writes or volatile accesses.

Keep the first vertex's XYZ assignments on one physical source line:

```c
D_8005BB34->v.ob[0] = (x + leftX); D_8005BB34->v.ob[1] = (y + leftY); D_8005BB34->v.ob[2] = (z + leftZ);
```

## Correct ASM

All 373 instruction words match, including the 0x50-byte frame, indexed address sharing, RGB-then-alpha packing, and first-vertex schedule:

```asm
lbu t8, 6(a2)
lbu t7, 7(a2)
sll t9, t8, 24
sll t8, t7, 16
or  t6, t9, t8
lbu t9, 8(a2)

trunc.w.s f10, f8
add.s     f8, f12, f20
mfc1      t9, f10
trunc.w.s f6, f4
```
