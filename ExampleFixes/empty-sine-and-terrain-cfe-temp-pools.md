incorrect ASM (`func_8008B190_9A140`):

```asm
addiu   sp,sp,-0x88      # target -0x80
sh      t9,0x82(sp)      # target 0x7a
sh      t0,0x80(sp)      # target 0x78
sh      v0,0x6e(sp)      # target 0x66
```

-> code changed:

```c
/* Hoist both sine calls, not just one. */
random[3] = coss(angle);
forwardAngle = sins(angle);
forwardAngle = func_800B84D0_C7480(/* cosine X, forwardAngle sine Z */) >> 8;

random[3] = coss(angle);
angle = sins(angle);
angle = func_800B84D0_C7480(/* cosine X, angle sine Z */) >> 8;
alienInstances[arg0].unk38 = func_80003824_4424(50.0f, forwardAngle - angle);

/* Also hoist the terrain call used by the later compound condition. */
forwardAngle = func_800B84D0_C7480(alienInstances[arg0].unk0,
    alienInstances[arg0].unk4) >> 8;
if ((forwardAngle < alienInstances[arg0].unk2) &&
    (alienInstances[arg0].unk2C >= 2)) { /* ... */ }
```

The stock `-Wo,-zdbug:2` listing identified a hidden halfword at virtual
offset -34, assigned by both sine returns, and a hidden word at -40,
assigned by the backward and conditional terrain returns. Hoisting one
definition left its pooled temporary alive at the other definition.
Hoisting all four removed both pools. A shared halfword scratch array
also retains the target cosine/random-result scheduling.

-> correct ASM:

```asm
addiu   sp,sp,-0x80
sh      t9,0x7a(sp)
sh      t0,0x78(sp)
sh      v0,0x66(sp)
```
