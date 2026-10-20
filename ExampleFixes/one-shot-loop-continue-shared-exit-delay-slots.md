### Incorrect ASM

```asm
/* func_80110FB4_11FF64: exits from the general collision checks. */
120f98: beqz    at,120fb0
120f9c: nop
121134: bnez    at,1215f8
121138: nop
121154: bnez    t3,121164
121158: nop
121310: bnez    t3,1215f8
121314: nop
```

### Code changed

```c
/* Before: exits from the outer one-shot collision loop used break. */
do {
    if (ceiling < bottom && (vehicle->unk20 & VEHICLE_FLAG_AIRBORNE)) {
        if (D_80222A70 < vehicle->unk2 && arg1 == 0) {
            func_8010FAC8_11EA78(2, 0x808);
        }
        break;
    }
    /* Other collision checks also exit this same loop with break. */
} while (0);
gridX = func_8010FF84_11EF34(vehicle, arg1);

/* After: change every exit of that outer loop to continue. */
do {
    if (ceiling < bottom && (vehicle->unk20 & VEHICLE_FLAG_AIRBORNE)) {
        if (D_80222A70 < vehicle->unk2 && arg1 == 0) {
            func_8010FAC8_11EA78(2, 0x808);
        }
        continue;
    }
    /* The other exits of this same loop also use continue. */
} while (0);
gridX = func_8010FF84_11EF34(vehicle, arg1);
```

### Correct ASM

```asm
/* The continue join directly reaches the helper's argument load. */
120f98: beqzl   at,1215fc
120f9c: lw      a0,0xe8(sp)
121134: bnezl   at,1215fc
121138: lw      a0,0xe8(sp)
121154: bnezl   t3,1215fc
121158: lw      a0,0xe8(sp)
121310: bnezl   t3,1215fc
121314: lw      a0,0xe8(sp)
```
