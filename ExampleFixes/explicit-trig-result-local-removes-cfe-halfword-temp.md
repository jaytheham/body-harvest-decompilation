# Explicit trig result locals control IDO temporary stack extent

Matched `func_802E4214_328364` (Comet) with IDO 5.3 -O2.

An inline `(f32)coss((u32)angle)` created a compiler-generated signed-halfword temporary after the declared locals. The optimizer trace showed it at frame-relative offset -18 even though the final assembly consumed the return register directly and emitted no store for that temporary. Its reserved space moved a shared pointer/trig-argument spill from the target `sp+0x2C` to `sp+0x28`.

Declare the cosine result immediately before the sine result, then assign both explicitly:

```c
s16 cosine;
s16 sine;

sine = sins((u32)angle);
cosine = coss((u32)angle);
func_800C8184_D7134((f32)sine / 32768.0 * 20.0, 0x28,
                   (f32)cosine / 32768.0 * -20.0, effectId);
```

The cosine local replaces the implicit halfword temporary. It occupies the unused `sp+0x32` home, while sine uses `sp+0x30`; the shared compiler spill returns to `sp+0x2C`. Cosine remains in `v0` without extra sign-extension instructions. Full ROM checksum verified `OK`.

For the angle, assigning a `u16` local and independently passing the original subtraction to the first effect call preserves the raw `sh` before the parameter's `andi`. Repeating the promoted `(u32)angle` expression for both trig calls gives one `lhu`, a word spill, and an `lw` for the second call.

## Inspecting hidden temporary slots

Temporarily add `-K -Wo,-zdbug:6` to this object's CFLAGS and build through `tools/make.ps1`. `-K` retains the intermediate files; `uoptlist` describes variables and frame-relative offsets. Restore the build flags afterward. This repository's recompiled optimizer can assert in `wrapper_ecvt` while printing some later floating-point expressions; a trace already printed for an earlier function can still identify its temporaries. Rebuild with normal flags before trusting the object or checksum.
