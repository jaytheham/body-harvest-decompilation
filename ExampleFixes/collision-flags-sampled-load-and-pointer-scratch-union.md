`incorrect ASM` (`func_8011049C_11F44C`, final accumulated flags):

```asm
lw      t5,0x68(sp)
move    v0,zero
andi    t6,t5,1
beqz    t6,return
nop
```

-> `code changed`:

```c
union {
    int accumulated;
    volatile int sampled;
} collisionFlags;
s32 flags;

/* Accumulate through the ordinary member, then sample once. */
collisionFlags.accumulated |= checkFlags;
/* After the collision-volume loop: */
flags = collisionFlags.sampled;
if (flags & 1) {
    if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) || (flags & 8)) {
        return 9;
    }
    return 6;
}
return 0;
```

-> `correct ASM`:

```asm
lw      v0,0x68(sp)
andi    t5,v0,1
beqzl   t5,return
move    v0,zero
lhu     t6,0x20(s7)
andi    t8,v0,8
andi    t7,t6,2
```

`incorrect ASM` (adding a separate final flag cache):

```asm
addiu   sp,sp,-0x98
sw      zero,0x70(sp)
sw      zero,0x6c(sp)
lw      a1,0x94(sp)
lw      v0,0x70(sp)
```

-> `code changed`:

```c
/* Replace the first integer scratch local and the later entry pointer. */
union {
    s32 unused;
    Unk8015FAD0 *volume;
} scratch;

/* Declare the final flags in the former entry pointer's position. */
s32 flags;

/* The initial probe uses scratch.unused before volume is assigned. */
func_8010FAC8_11EA78(0xB, scratch.unused);
/* The subsequent loop uses the pointer member. */
scratch.volume = &D_8015FAD0[var_s6];
```

-> `correct ASM`:

```asm
addiu   sp,sp,-0x90
sw      zero,0x68(sp)
sw      zero,0x64(sp)
lw      a1,0x8c(sp)
lw      v0,0x68(sp)
```
