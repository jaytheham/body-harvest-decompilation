# Convert an effect array base before indexing

Matched `func_800CD0B0_DC060` in `src.us/overlay_gameplay/outside/CFE30.c`.

The target uses one multiplication for the new unit index but two additions
for its addresses: an anonymous entry address for the lifetime store and a
saved payload address for color, position, and velocity. Casting only the
indexed payload merged those addresses and left a missing ADDU, an early color
store, and different registers. Convert the array base before indexing:

```c
base = (Unk80154318Entry *)(s32)D_80154318;
sub = (JetStreamParticleState *)(s32)base[unitId].payload;
D_80154318[unitId].unk2 = (random % 40) + 0x14;
```

Keeping the lifetime store through the original array and the payload through
the converted base reproduces both ADDUs. A named `base` local preserves this
behavior and replaces an otherwise unused pointer home. Declare it between
the previous-unit and new-unit shorts: the target stores those shorts at
sp+0x2E and sp+0x26 in a 0x30 frame.

Capture the allocation result in a word and then copy it to the short unit ID;
compare the word with -3. Evaluate the lifetime random call into a word before
indexing. Put the bounced flag clear after the Z velocity assignment; IDO
schedules it between MFHI and ADDU as in the target.

The particle view needs unsigned color bytes at payload offsets 6 through 8,
an opacity byte at 9, signed velocity bytes at A through C, and a bounced flag
at D. The emitter's existing signed-byte view must remain separate. Place this
0x0E payload view in the entry's outer union, alongside `ribbonState`; adding
it to the inner 0x0C union would move the following fields and enlarge the
entry stride. Direct member-address substitutions for the converted payload
views changed the frame and scheduling, so retain the conversions.

Verified assembly diff score 0 and full ROM checksum `build/bh.us.z64: OK`.
