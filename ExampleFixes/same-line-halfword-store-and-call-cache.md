# Halfword store beside a call argument cache

`func_802DBD84_25B4C4` matches all 304 instructions and passes the full US ROM
checksum with the standard build.

In `func_802DBD84_25B4C4`, IDO generated the correct instructions but reversed
two adjacent stores before the first `sins` call. The target stores the
converted unsigned argument with `sw a0,0x2c(sp)`, then saves the signed angle
with `sh t7,0x4e(sp)`.

Keeping the halfword assignment and the expression containing the call on
the same source line fixes that order:

```c
sp4E = sp48; D_802E0E32 += 20.0 * ((f32)sins(sp48) / 32768.0);
```

Putting the assignment on its own line emits the halfword store first.
The compiler's `.loc` boundaries affect the assembler's scheduling here;
the C operations and values are unchanged. Joining the preceding global
increments as well moves a shift ahead of the first global store, so keep
those statements on separate lines.

This removed the last structural difference, reducing the intermediate
function score from 181 to 121.

## Moving a register temporary into existing padding

The same function initially spilled the alien pointer at sp+0x30 instead
of sp+0x34, and the two narrowed effect coordinates four bytes below their
target slots. Its explicit coordinate and angle homes already matched.

Move the existing `s32 temp` declaration from after the coordinates to
immediately before `s16 position[2]`, and shrink the previous position
array from four elements to two. The word temporary occupies the unused
sp+0x5c space while the position pair remains at sp+0x58. Removing the
trailing word reservation raises the automatic spills by four bytes
without changing the 0x68 frame or any explicit local home.

With a separate age byte in the padding beside the two child IDs, this
reduced the intermediate function diff to 55. All instructions and stack
offsets matched; the counter used a0 instead of a1, and the second scale
address consequently used a1 instead of a2.

## Reuse a word carrier across the final sound calls

The final fix uses one `s32 value` for the counter and the two sound handles.
Declare it before `position[2]`, in the unused sp+0x5c space, and declare the
word `temp` last, after the three coordinates. Remove the separate counter
byte. Preserve both counter assignments: one before the `< 0x40` test and
another after the three flag-update branches, followed by `temp = value`.

At each final sound call, explicitly cache the handle and retain a discarded
read. Keep the assignment, empty check, and consuming call on one source line:

```c
value = func_80011F90_12B90(&D_E020FB0); if (value) {} func_80004214_4E14(D_802E0E30, value);
value = func_80011F90_12B90(&D_E021030); if (value) {} func_80004214_4E14(D_802E0E32, value);
```

Caching the handles alone is byte-inert. Adding the empty checks gives the
counter its target a1 register and the second scale address a2. On separate
source lines, this leaves the handle move before the scale load and puts the
load in the call delay slot. Joining all three statements fixes both final
pairs: the load precedes `jal`, with `move a1,v0` in its delay slot. No new
instructions or stack slots remain.

The explicit counter/handle carrier is a word because the handles are full
32-bit values. A diagnostic runtime with only the missing ecvt/fcvt formatting
wrappers implemented exposed the allocator's web and conflict information;
its function-level UGEN listing was identical to the unmodified compiler's.
The implementation and final checksum were verified only through the normal
project build. Redundant coordinate argument casts and float assignment casts
were removed afterward, with the ROM checksum still passing.
