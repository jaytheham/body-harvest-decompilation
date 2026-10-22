## incorrect ASM

In `func_80089B38_59FE8`, capturing each graphics packet in a shared `Gfx *gfx` local gave the correct instructions but allocated the initial index to `t3`, the particle size to `a2`, and the next index to `t5`. Removing `gfx` alone changed the frame from `0x38` to `0x48`, moved the display-list global address from `s0` to `s2`, and repeatedly materialized the `0x800` texture coordinate instead of keeping it in `ra`.

## code changed

Pass `D_8005BB2C++` directly to the graphics macros and capture the texture-coordinate extent in a named short before the guarded loop:

```c
s16 uv;

if ((idx != -6) && (idx != -5)) {
    one = 1;
    uv = 0x800;
    do {
        gDPPipeSync(D_8005BB2C++);
        /* Compute eight separate s16 corner coordinates. */
        D_8005BB34->v.tc[0] = uv;
        /* Use uv for all four nonzero texture coordinates. */
        nextIdx = entry->unk4;
        nextIdx &= -1;
    } while ((nextIdx != -6) && (idx = nextIdx, nextIdx != -5));
}
```

Keep the integer-to-float vertex assignments, including `(f32)one`, so IDO emits the target integer/float conversion round trips.

## correct ASM

```asm
addiu   sp,sp,-0x38
lui     s0,0x8006
addiu   s0,s0,-0x44d4
lw      a0,0(s0)
lui     t5,0x800e
lh      t5,-0x17e6(t5)
/* After the two initial end-of-list checks: */
li      ra,0x800
/* Particle inputs: */
lh      a1,2(v1)
lh      t1,0xc(v1)
lh      a3,8(v1)
/* Loop tail: */
lh      a2,4(v1)
li      at,-6
beq     a2,at,exit
li      at,-5
bne     a2,at,loop
sh      a2,0x36(sp)
```

The function diff is zero and the stock US ROM build reports `build/bh.us.z64: OK`.
