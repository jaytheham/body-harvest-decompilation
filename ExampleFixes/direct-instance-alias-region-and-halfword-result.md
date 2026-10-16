# Direct instance access, alias regions, and a saved halfword result

`func_802DC244_25B984` matches all 366 instructions and the full US ROM checksum.

A named `AlienInstance *alien` produced the correct address in `s0`, but IDO closed
its `.noalias s0,sp` region after the initial guard. The assembler therefore kept
instance-coordinate loads before outgoing stack-argument stores and reordered the
final timer/parent loads. Changing only the call coordinates to indexed access did
nothing: the remaining named-pointer references still caused commoning through the
pointer variable. Remove the pointer completely and use `alienInstances[arg0]` for
all its fields and address arguments. This retains the alias information throughout
the body and reproduces the target scheduling without assembler directives in C.

A diagnostic `cc -S` listing replayed through `as0` and `as1` was instruction-exact
before experimentation. Extending only the pointer's no-alias region reproduced the
required scheduling, identifying the mechanism before the C change was adopted.
Diagnostic assembly edits were never used as the implementation or ROM validation.

For the circular effect, preserve the full computed Z word but read its signed low
halfword for the later collision call. Use the existing `SignedWord` union:

```c
sp7C = centerZ - ((f32)coss(sp7C) / 32768.0) * radius;
z.word = sp7C;
spawn_effect(x, ground, sp7C, 0x96, 0);
/* Update instance flags. */
collision_effect(x, ground, z.halves.low, 0xDAC, 0x190);
```

The scalar first-call argument retains `mfc1`/sign extension and the full-word store
in the call delay slot. Reading the union halfword later gives one `lh`, rather than
`lw` plus shifts. Assigning directly to the union instead emits `swc1` and a halfword
reload for the first call, which is the wrong shape.

With all instructions and registers correct, the remaining score was 32: the two
anonymous integer spill homes were four bytes high. Keep unused words at the former
X-difference slot and before the radius, and declare the register-only X difference
last, after the radius. The final declaration order is parent pointer, terrain,
shared distance/angle/Z temporary, unused word, Z difference, X result, `SignedWord`
Z result, unused word, radius, X difference. This preserves frame `0x88` and the live
homes while moving the argument caches from `0x54/0x58` to `0x50/0x54`.

Also let the trig helpers' `u16` parameters narrow the angle. An explicit `0xFFFF`
mask preserves the opcode shape but changes the temporary-register sequence.