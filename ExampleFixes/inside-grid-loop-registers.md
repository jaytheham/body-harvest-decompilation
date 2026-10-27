# Inside collision grid traversal

`incorrect ASM` in `func_8007B65C_16371C`: the grid iteration used the outer and inner saved registers in the opposite roles, and its branch operands were reversed.

`code changed`: Keep the X start in a separate local before the collision-distance calculation, use a distinct Z loop local, and compare each upper bound to its index:

```c
gridX = minGridX;
/* Calculate collision distance. */
if (var_a2 >= gridX) {
    s32 maxGridXExclusive = var_a2 + 1;
    do {
        gridZ = minGridZ;
        if (maxGridZ >= gridZ) {
            s32 maxGridZExclusive = maxGridZ + 1;
            do {
                /* Test the cell. */
                gridZ++;
            } while (maxGridZExclusive != gridZ);
        }
        gridX++;
    } while (maxGridXExclusive != gridX);
}
```

`correct ASM` for the loop tail:

```asm
addiu s0, s0, 1
bnel  s3, s0, loop_z
 lw   t2, 0(s8)
...
addiu s1, s1, 1
bnel  t0, s1, loop_x
 lw   s0, 0xa4(sp)
```

The instruction sequence matches structurally; stack offsets still differ.
