### Counted loop with a `blez` guard, a replaced `bne` exit test and early induction updates

`func_800B753C_C64EC` (`outside/BF9C0.c`) emits one textured quad per road entry. The loop is too large to be
unrolled, its counter is only used through strength-reduced values (`i * 4`, `&indices[group][i + offset]`) and
the target tests one of those values instead of the counter:

**Target ASM**
```
blez    s5,<after loop>        ; count > 0
move    s0,zero
...
sll     s6,s5,0x3
addiu   s6,s6,6                ; limit = count * 8 + 6
...
sw      t7,0(v1)
addiu   t5,t5,8                ; first induction update, before the last `or` of the triangle word
or      t7,t9,t8
sll     t6,ra,0x10
addiu   s2,s2,8
addiu   s0,s0,8
addiu   s1,s1,8
addiu   a2,a2,2
sra     ra,t6,0x10
bne     t5,s6,<loop>
sw      t7,4(v1)
```

**Incorrect ASM 1** - `for (i = 0; i < count; i++)`: the counter is kept in a register and compared directly, so
the whole function is allocated differently.
```
blez    s6,<after loop>
...
addiu   s4,s4,1
bne     s4,s6,<loop>
```

**Incorrect ASM 2** - `for (i = 0; i != count; i++)`: the exit test is replaced and the loop body is right, but the
guard is the same `!=` test.
```
beqz    s5,<after loop>
```

**Incorrect ASM 3** - `if (count > 0) { i = 0; do { ...; emittedQuads++; i++; } while (i != count); }`: guard and
exit test are right, but the updates come from a later source line than the body and are scheduled after it.
```
sw      t7,0(v1)
or      t7,t9,t8
sll     t6,ra,0x10
addiu   t5,t5,8
sra     ra,t6,0x10
addiu   s2,s2,8
```

**Code changed** - keep the update in a `for` header (it then belongs to the line of the `for`, above the body),
make the exit test a `!=`, and let a flag that starts as `TRUE` remove the loop's own guard so that the only guard
left is the explicit `count > 0`:
```c
if (count > 0) {
	for (i = 0, more = TRUE; more; i++, more = i != count) {
		...
		gSP2Triangles(D_8005BB2C++, i * 4, i * 4 + 2, i * 4 + 1, 0, i * 4 + 1, i * 4 + 2, i * 4 + 3, 0);
		emittedQuads++;
	}
}
```
The flag is never materialised: the initial test folds away and the bottom test becomes `bne t5,s6`.

Other things this function needed:
- `count` is `s32`. As `s16` the replaced test comes out as `bne s6,t5` (operands swapped).
- The row index is written `indices[group][i + offset]` in every loop. With `offset + i` the unrolled vertex-copy
  loop adds the two scaled terms in the other order (`sll t6,s8,0x1` before `sll t9,a3,0x1`).
- `remaining` and `group` are plain locals; they live on the stack (`0x116(sp)`, `0x1340(sp)`) only because the
  function runs out of registers, no array or union is needed to force that.
- An empty `if (D_8005BB2C) {}` after the `gDPPipeSync` that follows the first group loop keeps the `0xE7000000`
  constant in `t4` for the rest of the function and moves `addiu t1,sp,0x11c` above the second count reset.
  Without it the constant is loaded into `t5`, again into `t4` before the reset loop, and never after the second
  bucket loop.
