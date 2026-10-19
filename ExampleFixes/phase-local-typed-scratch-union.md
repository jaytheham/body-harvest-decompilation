## Incorrect ASM

In `func_8012B26C_13A21C`, independent random-value locals assigned the fourth and sixth masked random results to `s2` and `s0`. The target uses `s0` and `s2`. Reordering their declarations did not change allocation.

```asm
andi s2,v0,0xffff  # fourth result
...
andi s1,v0,0xffff  # fifth result
...
andi s0,v0,0xffff  # sixth result
```

## Code changed

The projectile-control, vehicle-type, and alien-type pointers occupy disjoint phases. Their existing local pointer union uses `s2`. Add a signed word member for the sixth random result, which is only used after those pointer phases have finished:

```c
union {
    UnkProjectileCtrl_8012B26C *ctrl;
    VehicleType *vehicle;
    AlienType *alien;
    s32 random;
} data;

/* In the randomized impact effects, after all pointer uses: */
data.random = func_800038E0_44E0() & 0xFFFF;
/* Later effect argument: */
(u8)((data.random % 0x10) + 0x16)
```

The fifth result already shares the signed height scratch local. Preserve the vacated word's declaration slot while assessing this change independently of stack layout.

## Correct ASM

The union's integer member retains the pointer phase's register, leaving the other random values in the target registers:

```asm
andi s0,v0,0xffff  # fourth result
...
andi s1,v0,0xffff  # fifth result
...
andi s2,v0,0xffff  # sixth result
```
