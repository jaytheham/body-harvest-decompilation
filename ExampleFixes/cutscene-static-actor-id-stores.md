# Function-static cutscene actor storage

Incorrect ASM:
```asm
lui a3,0x802e
addiu a3,a3,0x30f0
sw v0,0(a3)
# no actor ID store immediately before activation
```

Code changed:
```c
/* Before: external global plus a local ID */
s32 actor;
actor = func_8007956C_8851C(0x12);
D_802E30F0 = actor;
/* After: preserve earlier overlay BSS with a 0x60-byte prefix */
static s32 actorIndex;
actorIndex = func_8007956C_8851C(0x12);
/* Access alienInstances[actorIndex] directly, then activate it. */
func_8007A198_89148(actorIndex);
```

Correct ASM:
```asm
lui at,0x802e
sw v0,0x30f0(at)
# actor field initialization
lui at,0x802e
jal func_8007A198_89148
sw a0,0x30f0(at)
```

Observed in `func_802D5F28_2B8358`. Function-static storage allows IDO to
cache the actor ID and synchronize its memory home before the helper call.
The America cutscene `func_802D563C_254D7C` supplies the same source pattern.
