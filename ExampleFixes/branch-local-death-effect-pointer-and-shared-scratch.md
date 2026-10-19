incorrect ASM (`func_8008A3EC_9939C`, random-coordinate block):

```asm
lhu     t8,0x5c(sp)
lh      t6,0(s0)
lhu     t3,0x5e(sp)
sra     t7,t8,8
addu    a0,t6,t7
lhu     t7,0x60(sp)     # target loads this after the X sign-extension shift
addiu   a0,a0,-0x80
lh      t6,4(s0)
sll     t1,a0,16
```

-> code changed:

```c
void *scratch = &D_502D390;
/* Other branches use direct alienInstances[arg0] accesses. */
/* Rebind only after all four random calls, immediately before this call. */
scratch = &alienInstances[arg0];
func_800DEA08_ED9B8(
    (s16)(((randA >> 8) + ((AlienInstance *)scratch)->unk0) - 0x80),
    (s16)((randB >> 10) + ((AlienInstance *)scratch)->unk2),
    (s16)(((randC >> 8) + ((AlienInstance *)scratch)->unk4) - 0x80),
    /* remaining arguments unchanged */);
scratch = &D_502D390;
/* Later particle loop passes (s32)scratch as its asset argument. */
```

The branch-local pointer changes coordinate operand ownership and scheduling.
A separate instance-pointer local also fixes this block but enlarges the frame
when the halfword homes are aligned. Reusing the pointer scratch and restoring
its asset value gives the target 0x88 frame, without caching a named instance
pointer throughout the function. Initialize the asset pointer before the
branches; assigning the asset address only inside the later loop hoists an
unwanted LUI/ADDIU/store into its preheader.

-> correct ASM:

```asm
lhu     t6,0x5c(sp)
lh      t7,0(s0)
lhu     t4,0x5e(sp)
sra     t8,t6,8
addu    a0,t8,t7
addiu   a0,a0,-0x80
sll     t1,a0,16
lhu     t8,0x60(sp)
sra     a0,t1,16
lh      t1,4(s0)
```
