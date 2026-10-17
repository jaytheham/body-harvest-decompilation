`incorrect ASM`

```asm
/* All explicit C constants in one object precede its generated literals. */
/* 32BCE8 */ .double 628.3185308
/* 32BD20 */ .double 1000.0
/* Splitting text at 324CB4 also pads func_802E0B64 to 324CC0. */
```

-> `code changed`

Move the preserved constants from GLOBAL_ASM late-rodata sidecars into C definitions. Split 318E20.c at aligned function starts 323A90 and 324220, preserving all function bodies and inline literals. In 323A90.c define D_802E7B90_32BCE0 before the generated 1000.0 literal. In 324220.c define the seven constants D_802E7BA0_32BCF0 through D_802E7BD0_32BD20 before its generated literals. Set the US YAML rodata boundaries to 32BCE0 and 32BCF0, and the EU boundaries to 32C840 and 32C850. Register both new C files in shared_overlay_files.txt.

-> `correct ASM`

```asm
/* 32BCE0 */ .double 1000.0
/* 32BCE8 */ .double 1000.0
/* 32BCF0 */ .double 628.3185308
/* 32BCF8 */ .double 3.141592654
/* 32BD00 */ .double 628.3185308
/* 32BD08 */ .double 402.123859712
/* 32BD10 */ .double 402.123859712
/* 32BD18 */ .double 270.176968244
/* 32BD20 */ .double 270.176968244
/* 32BD28 */ .double 173.0
/* func_802E0B64 remains at ROM 324CB4. */
```
