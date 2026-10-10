# One halfword mask closes the map renderer register residual

`func_80097994_A6944` in `outside/A49A0.c`, IDO 5.3 O2 mips2 32.
The 130 draft had the exact instruction sequence and stack homes. Its
scale constant occupied v1 instead of t6; the matrix advance and all
remaining graphics-command temporaries were one register behind.

Keep the translation/map-position/scale arrays and the inner matrix local.
Use exactly one halfword mask in the scale copies:

```c
scale[2] = 0x100;
scale[1] = scale[2] & 0xFFFF;
scale[0] = scale[2];
```

This changes the register allocation without emitting an AND instruction:
130 -> 0. The constant becomes t6, the matrix advance becomes t7, and the
last display-list commands use the target register sequence. Masking only
the other copy also matches; masking both copies scores 320. Unsigned
0xFFFFU on one copy matches, while 0xFFFFFFFFU is neutral and 0x1FFU is
worse. Thus an arbitrary identity expression is not an equivalent lever.

A vector struct instead of the array propagates all three constants and
emits three LI instructions (scores 915-923). A named scalar assigned to
all three elements also emits three LI instructions. Moving the matrix
allocation among the scale writes and changing local scopes did not close
this residual.

Validation: tools/make.ps1 reported build/bh.us.z64: OK, and tools/diff.ps1
reported CURRENT (0) against func_80097B74_A6B24. Other unfinished functions
used their assembly for this full-ROM check. This is a measured source
lever for this function, not a general assertion about every folded mask.
