## Incorrect ASM

In `func_8012B26C_13A21C`, the main countdown kept the next index in a temporary rather than `v0`, and an attempted cached next index added two preheader copies. Keeping that index live also hoisted the shared double `1.0` into an extra saved float register, enlarging the frame from `0x1B8` to `0x1C0`.

```asm
move  v1,v0
move  a0,v0
...
addiu t2,s0,-1
sw    t2,0x198(sp)
```

## Code changed

Guard a do-loop with the original postdecrement. Initialize the cached next index once before its first iteration, retain its discarded test, and use the unsigned member of the existing random-value scratch union to hold the old count in the latch. Early `continue` statements still reach the do-loop condition.

```c
i = D_8015F9E4;
if (i--) {
    nextIndex = i;
    do {
        if (nextIndex) {}
        /* Existing projectile body. */
    } while ((randD.u = (u32)i,
              nextIndex = randD.u - 1,
              i = nextIndex,
              randD.u));
}
```

Spell only the first of the three double-one comparisons as `(f64)projectile->unkC < 1.0f`. Keep the other two comparisons against `1.0`. The first comparison remains double precision, while the distinct constant expression prevents the additional common-constant hoist. Changing all three sites recreates the hoist.

## Correct ASM

The preheader copies disappear, the frame remains `0x1B8`, and the latch and subsequent temporary allocation match:

```asm
lw    s0,0x198(sp)
...
addiu s6,s6,-0x30
addiu v0,s0,-1
bnez  s0,projectileLoop
sw    v0,0x198(sp)
```
