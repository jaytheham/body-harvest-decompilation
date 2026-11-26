# Incorrect ASM

In `func_800F554C_1044FC`, ending the compiler block after the last Z use freed `v0` before the endpoint half offsets. IDO selected `v0`/`a0` instead of `a0`/`t0`. Moving the split fixed the registers, but the first half still used the wrong anonymous slot:

```asm
sw    t0,0x28(sp)
sw    a0,0x30(sp)
# ...
lw    t9,0x30(sp)
```

# Code changed

Place ten `textureS = textureS;` statements after the final `arg1[0] - forwardX` vertex assignment and before its Y assignment. These initialized scalar self assignments emit no instructions, but move IDO's automatic block split between the final X and Z uses. The Z value still reserves `v0` in the following block, while `a0` is free for the first half offset.

For the first endpoint height, inline the original float division instead of reading its cached local. Keep the cached local for the following height:

```c
/* Before: both heights read radiusThird. */
D_8005BB34->v.ob[1] = work.end[1] - (2 * radiusThird);

/* After: expand only the first height. */
D_8005BB34->v.ob[1] = work.end[1] - (2 * (radius / 3.0f));
/* The next height still uses: */
D_8005BB34->v.ob[1] = work.end[1] - (2 * radiusThird);
```

Inlining the original division makes IDO image the shared float expression differently from a later copy-propagated local read. This changes the anonymous spill allocation order without changing the arithmetic instructions. Dead assignments of the same product before the endpoint did not fix that order.

# Correct ASM

```asm
sw    t0,0x28(sp)
sw    a0,0x2c(sp)
# ...
lw    t9,0x2c(sp)
```

The function has zero assembly differences and the full US ROM checksum passes.
