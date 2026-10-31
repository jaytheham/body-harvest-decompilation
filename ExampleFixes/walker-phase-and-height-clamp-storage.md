```asm
# func_800F842C_1073DC: union angle/trig scratch forced memory stores.
sw      t2,0xa8(sp)
sw      t7,0xa8(sp)
swc1    $f6,0xa8(sp)
lwc1    $f8,0xa8(sp)
# Reusing reach for the height limit also displaced the root to s1.
```
->
```c
/* Separate the integer phase, masked heading and floating trig value. */
s32 phase;
s32 heading;
s32 reach;
f32 trig;
/* Inline i % 3 instead of reserving a frameGroup local. */
heading = phase & 0xFFFF;
trig = coss(heading & 0xFFFF);
reach = (i % 3) * sp82 + 10;
/* Keep the later height clamp independent of the radial reach cache. */
if (sp8C.unk2 > D_80222A70 - 0x64) {
    sp8C.unk2 = D_80222A70 - 0x64;
}
```
->
```asm
andi    s1,v0,0xffff
andi    a0,s1,0xffff
jal     coss
nop
mtc1    v0,$f4
# No angle/trig scratch stores or reloads; root/heading/modulo/reach
# use s0/s1/s2/s3. All floating operations and the instruction count
# now match. The full function remains NON_MATCHING (GP temporaries).
```
