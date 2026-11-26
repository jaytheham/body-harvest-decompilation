# func_800ED78C_FC73C: temporary lifetimes and source-line scheduling

## X and height evaluation

### Incorrect ASM

```asm
lh      a3,0(v0)
mtc1    a3,$f6
addu    t4,t1,t8
sh      t4,0x92(sp)
addu    t2,t5,t1
```

### Code changed

Replace the named integer X cache and wide height cast with an unnamed X expression. Narrow the floating height offset to `s16`, as in the earlier matching height calculation:

```c
func_800FB44C_10A3FC(arg0, (f32)(temp_v0_3->unk0 +
    (sp92 = temp_v0_3->unk2 + 6 * vehicleTypes[temp_v0_3->unk1A].unk38,
     sp90 = (s16)D_80157600.unkC + arg0->unk2, 0)));
```

### Correct ASM

```asm
lh      t2,0(v0)
mtc1    t2,$f6
addu    v1,t1,t8
sh      v1,0x92(sp)
addu    t3,t5,t1
```

## Shared route address

### Incorrect ASM

```asm
lui     t5,0x8015
addiu   t5,t5,0x75e0
lh      t1,4(t5)
sll     t3,t1,1
addu    t8,t3,t5
lh      t7,0xa(t8)
```

### Code changed

Keep the shared address as a register candidate immediately before the existing volatile index read:

```c
if (&D_801575E0 && (s32)&D_801575E0) {}
func_800FB468_10A418(arg0,
    (f32)D_801575E0.coordinates[1][((volatile Unk801575E0 *)&D_801575E0)->unk4]);
```

### Correct ASM

```asm
lui     v0,0x8015
addiu   v0,v0,0x75e0
lh      t5,4(v0)
sll     t1,t5,1
addu    t3,v0,t1
lh      t8,0xa(t3)
```

## Discarded comparisons and the FP free list

### Incorrect ASM

```asm
sub.d   $f6,$f0,$f14
div.d   $f10,$f6,$f4
cvt.s.d $f12,$f10
```

### Code changed

Before the medium-speed branch's final `spAC = normalSpeed`, retain two separate discarded conversion regions:

```c
if ((f32)D_80157A28 < magnitude || (f32)D_80157A28 > magnitude) {}
if ((f32)(D_80157A28 & PLAYER_STATE_FLAG_SWIMMING) < magnitude ||
    (f32)(D_80157A28 & PLAYER_STATE_FLAG_SWIMMING) > magnitude) {}
spAC = normalSpeed;
```

The first comparison region is also retained between the fast-speed decrement and its global store, and before the fast-speed branch's final `spAC` assignment. They emit no comparisons, but preserve temporary allocation and release order.

### Correct ASM

```asm
sub.d   $f10,$f0,$f14
div.d   $f6,$f10,$f8
cvt.s.d $f12,$f6
```

## Animation argument and flag temporaries

### Incorrect ASM

```asm
lui     v0,0x8014
sll     t9,v1,2
subu    t9,t9,v1
sll     t9,t9,2
addu    t9,t9,v1
sll     t9,t9,2
addu    v0,v0,t9
lw      v0,-0x1a50(v0)
andi    t1,v0,4
```

### Code changed

Remove the unnecessary `(s32)(u64)` conversion of `spA0` at the preceding animation call, and inline the single-use animation flag load:

```c
func_800EB7CC_FA77C(&D_80157600, spA0, spA4, spAC);
/* ... */
if (D_8013E5AC_14D55C[D_80157600.unk40C].unk4 & 4) {
    /* ... */
}
```

### Correct ASM

```asm
lui     t9,0x8014
sll     t5,v1,2
subu    t5,t5,v1
sll     t5,t5,2
addu    t5,t5,v1
sll     t5,t5,2
addu    t9,t9,t5
lw      t9,-0x1a50(t9)
andi    t1,t9,4
```

## Counter update and source-line scheduling

### Incorrect ASM

```asm
andi    t4,v0,8
sw      t6,0x75d0(at)
move    v0,t4
```

### Code changed

Put the counter store before the aiming assignment, and keep both statements on one source line. Splitting the same two statements across lines reproduces the incorrect order above.

```c
D_801575D0 = 0x64; aiming = D_80157A28 & PLAYER_STATE_FLAG_AIMING;
```

### Correct ASM

```asm
andi    t4,v0,8
move    v0,t4
sw      t6,0x75d0(at)
```
