## incorrect ASM

After enabling `func_800878A4_57D54`, its literal `255.0` was emitted after the three explicit denominator placeholders used by the already matched `func_8008A094_5A544`. All renderer instructions matched except the denominator address.

```asm
ldc1 $f22,-0x1380(at) /* 0x800AEC80; target is 0x800AEC68 */
```

## code changed

In `func_8008A094_5A544`, replace `D_800AEC70_7F120[0]`, `D_800AEC78_7F128[0]`, and `D_800AEC80_7F130[0]` with `255.0`. Delete their three definitions and unused extern declarations, along with the renderer's obsolete denominator extern. Keep the earlier unmatched functions' placeholders.

```c
random.x = (f32)((f64)(f32)(func_800038E0_44E0() % emitter->spread) / 255.0);
/* The corresponding Y and Z expressions also use 255.0. */
```

## correct ASM

```asm
ldc1 $f22,-0x1398(at) /* renderer: 0x800AEC68 */
/* The later spawner retains its three loads at AEC70, AEC78, AEC80. */
```

The compiler emits the four literal constants in function order. Both function diffs are zero and the complete stock US ROM checksum is OK.
