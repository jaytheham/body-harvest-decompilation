Incorrect ASM (`func_800844D0_93480`, final position reads through the instance pointer):

```asm
sra     s0,t9,0x18
...
sh      s0,0x3c(sp)
# The target's move s0,v0 is absent.
```

Code changed:

```c
/* Before */
alien->unk2A = func_80003824_4424(
    (f32)(targetX - alien->unk0), (f32)(targetZ - alien->unk4));

/* After: read the current position through the global array after the helper. */
alien->unk2A = func_80003824_4424(
    (f32)(targetX - alienInstances[arg0].unk0),
    (f32)(targetZ - alienInstances[arg0].unk4));
```

Correct ASM:

```asm
sra     v0,t9,0x18
...
move    s0,v0
...
sh      v0,0x3c(sp)
```

Incorrect ASM (noncentral height-query coordinate):

```asm
sll     a1,s1,0x8
addiu   a1,a1,-0x80
```

Code changed:

```c
/* Before */
(tileZ << 8) - 0x80
(tileX << 8) + 0x180

/* After: truncate the tile center before adding the neighboring-tile offset. */
(s16)((tileZ << 8) + 0x80) - 0x100
(s16)((tileX << 8) + 0x80) + 0x100
```

Correct ASM:

```asm
sll     t4,s1,0x8
addiu   a1,t4,-0x80
...
sll     t3,s0,0x8
...
addiu   a0,t3,0x180
```

Incorrect ASM (final tile-to-world conversion, despite the same opcode count):

```asm
sll     t2,v0,0x8
sll     t5,v1,0x8
lh      t0,4(s3)
addiu   v0,t2,0x80
```

Code changed:

```c
/* Before */
targetX = (targetX << 8) + 0x80;
targetZ = (targetZ << 8) + 0x80;

/* After: truncate the shift before adding the center offset. */
targetX = (s16)(targetX << 8) + 0x80;
targetZ = (s16)(targetZ << 8) + 0x80;
```

Correct ASM:

```asm
sll     t4,v0,0x8
addiu   v0,t4,0x80
sll     t9,v1,0x8
lh      t4,4(s3)
```

Incorrect ASM (the final three differing words):

```asm
sra     t2,s1,0x8
...
sll     t3,t2,0x18
...
sra     s1,t3,0x18
```

Code changed:

```c
/* Before: assignments after the declarations. */
AlienInstance *alien;
s8 tileX;
s8 tileZ;
/* ... */
alien = &alienInstances[arg0];
tileX = (s8)(alien->unk0 >> 8);
/* mask initialization and the first output-coordinate assignment */
tileZ = (s8)(alien->unk4 >> 8);

/* After: initialize the pointer and both byte coordinates in their declarations. */
AlienInstance *alien = &alienInstances[arg0];
s8 tileX = (s8)(alien->unk0 >> 8);
s8 tileZ = (s8)(alien->unk4 >> 8);
```

Correct ASM (zero function diff and `build/bh.us.z64: OK`):

```asm
sra     t1,s1,0x8
...
sll     t2,t1,0x18
...
sra     s1,t2,0x18
```
