# Matched guOrtho literal duplicates a late-rodata placeholder

`incorrect ASM` (frontend `40720.c`, `func_80075710_45BC0`):

```
45bc8: lwc1 $f4,-0x1884(at)     # target loads D_800AE77C (-10000.0f)
45bcc: lui  at,0x800b
45bd4: lwc1 $f6,-0x1880(at)     # target loads D_800AE780 ( 10000.0f)
```

When the tiled background renderer was enabled from C, the literals were written inline:

```c
guOrtho(D_8005BB38, 0.0f, 160.0f, 120.0f, 0.0f, -10000.0f, 10000.0f, 1.0f);
```

IDO emits its own copies of `-10000.0f` and `10000.0f`, but those constants are *also* still
declared in `40720_late_rodata.s` (D_800AE77C/D_800AE780) for the remaining assembly-backed
functions. The result is two extra floats (8 bytes) inserted at the end of `40720.o`'s rodata,
which shifts every later constant, jump table and code reference by 0x8/0x10 and fails the ROM
checksum even though every function's own diff looks like a pure "address changed" diff.

`code changed`: load the constants from the late-rodata symbols the target actually uses:

```c
guOrtho(D_8005BB38, 0.0f, 160.0f, 120.0f, 0.0f, D_800AE77C_7EC2C[0], D_800AE780_7EC30[0], 1.0f);
```

-> `correct ASM`: the compiler loads `-0x1884(at)` / `-0x1880(at)`, no duplicate constants are
emitted, and the whole `overlay_gameplay/frontend/40720` rodata tail keeps its original layout
(`build/bh.us.z64: OK`).

Same pattern as the earlier `D_800AE518_7E9C8.value` (0.7), `D_800AE784_7EC34[0]` (1500.0f) and
`D_800AE788_7EC38[0]` (0.2f) fixes in this file: when a function is matched out of an overlay
whose `.late_rodata` placeholder data is still linked for other assembly functions, any constant
that the target loads from a named rodata address must stay a reference to that symbol instead of
becoming an inline literal.
