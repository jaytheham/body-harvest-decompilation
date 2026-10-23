Incorrect ASM (`func_800F1DDC_100D8C`, after removing `#line`):

```asm
lui     at,0x8015
lui     a3,0x4000
```

-> Code changed: leave the integer reset and height read before the loop, and put only the float reset inside a single-pass `for` whose update calls the effect before clearing its condition.

```c
s32 once;

/* ... */
D_80159DE2 = 0;
level = buildingInstances[D_80159DDF].yCoord;
for (once = 1; once; func_80135D44_144CF4(x, level, z, 2.0f), once = 0) {
    D_80157FE4_Write = 0.0f;
}
```

The full US ROM checksum passes. Moving the integer reset and height read into the loop instead exchanges `v0` and `v1` throughout parts of the function. Clearing the condition before the call instead of after it prevents this loop from disappearing completely.

-> Correct ASM: IDO removes the loop and its condition entirely, preserves the reset in the call delay slot, and emits the scale load before the output-address load:

```asm
lui     a3,0x4000
lui     at,0x8015
c.eq.s  $f0,$f12
nop
bc1tl   .L800F251C_1014CC
 mtc1   zero,$f12
sh      zero,0(t0)
lh      a1,2(v0)
jal     func_80135D44_144CF4
 swc1   $f12,0x7fe4(at)
```
