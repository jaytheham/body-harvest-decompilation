incorrect ASM (`func_8008A3EC_9939C`, signed word base angle with masked call arguments):

```asm
lh      v0,6(s0)
addiu   t8,v0,0x4000
andi    a0,t8,0xffff
jal     sins
sw      a0,0x54(sp)
```

-> code changed:

```c
/* Before: s32 pitch; sins((pitch + 0x4000) & 0xFFFF), then the same coss argument. */
s16 pitch;
s16 pad6C; /* Retain the original local reservation and following halfword homes. */

pitch = alienInstances[arg0].unk6;
pitch += 0x4000;
tempF = (f32)((f64)(f32)sins(pitch) / 32768.0 * 5.0);
pitch = coss(pitch);
```

Keep the angle signed and narrow the compound update through the short local.
Pass that local directly to both unsigned-short trig parameters. Explicit masks
at the calls change temporary ownership again. The matched reference is the
`sp6C += 0x4000` update in `func_802E0B64_324CB4`. A word local with the update,
or a short local with only the inline masked additions, did not match.

-> correct ASM (full US ROM verified `OK`):

```asm
lh      v0,6(s0)
addiu   t7,v0,0x4000
andi    a0,t7,0xffff
jal     sins
sw      a0,0x54(sp)
```
