### Nibble loop with a stack copy, hoisted base offsets, and temporary register order (`func_80076A10_859C0`)

All of the callee-saved registers are taken in this function, so several values live on the stack. Four separate
patterns were needed; each one is listed as `incorrect ASM` -> `code changed` -> `correct ASM`.

#### 1. Loop word kept in `v0`, stored at the loop head and reloaded at the loop tail

`incorrect ASM` (one `packed` variable; the save follows the call and each branch end reloads it):

```
beqzl   s7,.tail
 srl    t7,v0,0x4
jal     func_80076830_857E0
 sw     v0,0x60(sp)
```

`code changed`: copy the word into a one-element local array at the top of the body and shift that copy in the
loop increment. A scalar copy is given `v0` at the tail and pushes `packed` into `v1`.

```c
for (inner = 0; packed != 0; inner++, packed = (u16)(current[0] >> 4))
{
	type = packed & 0xF;
	current[0] = packed;
```

`correct ASM`:

```
andi    s7,v0,0xf
beqz    s7,.tail
 sw     v0,0x60(sp)
...
.tail:
lw      v0,0x60(sp)
addiu   s8,s8,1
srl     t5,v0,0x4
andi    v0,t5,0xffff
bnezl   v0,.head
```

#### 2. Temporary register order rotated by one after the first call

`incorrect ASM`: `sll t4,v0,0x2` / `lui t9,%hi(D_80259D90)` with every later `t` register one step out.

`code changed`: `if (packed != 0)` -> `if ((packed & 0xFFFF) != 0)` in the block that loads the halfword. The mask
emits nothing after `lhu`, but it takes one temporary register.

`correct ASM`: `sll t9,v0,0x2` / `lui t8,%hi(D_80259D90)`.

The same rotation appeared before each texture coordinate. `style->scale << 0xB` -> `(style->scale << 6) << 5`
keeps the single `sll ...,0xb` and takes the extra temporary before the field load.

#### 3. Offsets computed after the row addresses and spilled to temporary slots

`incorrect ASM` (`xOff -= 0x8000` at the start of the second branch; the values are saved in the variables' own
stack homes):

```
addu    a3,a1,at
addu    t0,a2,at
addu    t1,v0,t7
addu    t2,v0,t4
...
sw      t0,0x58(sp)
sw      a3,0x5c(sp)
```

`code changed`: assign the offsets once, next to the first use of the tile expression, and only read them in the
second branch. Write the tile expression out in both statements instead of naming it.

```c
baseX = (((arg1 << 2) + (outer & 3)) << 8) - 0x8000;
spA8.unk0 = D_801416A0_150650[inner] + (((arg1 << 2) + (outer & 3)) << 8) - 0x8000;
```

`correct ASM`:

```
addu    t1,v0,t7
addu    t2,v0,t4
addu    a3,a1,at
addu    t0,a2,at
...
sw      t0,0x4c(sp)
sw      a3,0x54(sp)
```

Writing `D[inner][0] + (xOff - 0x8000)` in place does not work: the constant is moved to the outside of the sum
and the tile offset takes a callee-saved register away from the loop counter.

#### 4. Coordinates kept in the vector passed by address

`incorrect ASM`: separate `x` and `z` locals put `z` in `s2` (`addu s2,t6,t8`).

`code changed`: remove the locals and use `spA8.unk0` / `spA8.unk4` directly, including as the call arguments.

`correct ASM`: `addu a3,t6,t8`, with `sh` before the call and `lh a3,0xac(sp)` / `lh s1,0xa8(sp)` after it.
