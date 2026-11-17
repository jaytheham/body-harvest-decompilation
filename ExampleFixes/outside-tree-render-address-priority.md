incorrect ASM (`func_8007764C_865FC`, first model pass):

```asm
lui     s2,0x8003
addiu   s2,s2,0x1160
and     t7,s2,at
move    s2,t7
```

-> code changed:

Retain an empty joint condition after the model display-list packet. The integer matrix-address carrier is `i`; the typed object cursor is `obj`.

```c
gSPDisplayList(D_8005BB2C++, obj->unk8);
if (i == 150 && obj < &D_80259D90[150]) {}
```

-> correct ASM:

```asm
lui     s3,0x8003
addiu   s3,s3,0x1160
and     t7,s3,at
move    s3,t7
```

The condition emits no instructions. Its separate basic-block uses change the address-web priorities: the camera address uses target register `s3`, and the later texture-mode command uses target register `s2`. The frame remains `0x128`, the streaming prefix remains exact, and the score improves from 685 to 600. This is a partial allocation fix: endpoint sharing across the two rendering passes and the previous-texture register still prevent a complete match.
