`incorrect ASM`: In `func_8010D4EC_11C49C`, using separate scalars for the outer query and selected edge point keeps that point in `$f16/$f18`. The final correction omits the target's `swc1`/`lwc1` pairs at `sp+0x8C` and `sp+0x88`.

-> `code changed`: Use `x0/z0` for the initial query and main-line calculation. Reload the original query into `xIn/zIn` inside the outer loop, use those in `startSide`, and reuse `xIn/zIn` for the selected edge point after the angle calls. Keep vehicle and camera center fields as direct accesses.

-> `correct ASM`: The selected point uses `$f12/$f14`; the Z correction stores both at `sp+0x8C` and `sp+0x88`, reloads them for `div.s $f12,$f8,$f6`, and the intersection uses `$f16/$f18` with output copies in `$f0/$f2`. This block matches; the complete function remains unmatched.
