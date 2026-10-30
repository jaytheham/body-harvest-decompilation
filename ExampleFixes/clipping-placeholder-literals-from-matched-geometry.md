`incorrect ASM`: Enabling `func_8010EF40_11DEF0` and preserving its four preceding double placeholders as ordinary C objects moves those objects ahead of generated literal pools. The first radius calculation then loads the right value from the wrong address:

```asm
ldc1 $f6, 0x4A20($at)
```

-> `code changed`: Generate the constants at their actual C uses. In `func_8010C4EC_11B49C` and `func_8010CA38_11B9E8`, replace `D_80144CF8_153CA8.value` and `D_80144D00_153CB0.value` with `1.2`. In `func_8010D4EC_11C49C`, replace `D_80144D08_153CB8[0]` and `D_80144D10_153CC0[0]` with `32767.0`. Remove the four `.late_rodata` definitions from the clipping fallback support and their now-unused header declarations. Retain the unchanged clipping reference instructions while that function remains unmatched.

-> `correct ASM`: The compiler emits the two `1.2` literals and the two `32767.0` literals in the original order. The first radius load is restored:

```asm
ldc1 $f6, 0x4CF8($at)
```

All three geometry function diffs remain zero. With the clipping assembly fallback retained, the normal US and EU full-ROM checks pass. With clipping C enabled, only its six known floating-register fields differ; the data layout and all other ROM words match.
