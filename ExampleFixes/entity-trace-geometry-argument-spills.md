`incorrect ASM`

```asm
# func_80126B80_135B30, coordinate spills for func_801269BC_13596C
sw      a2,0x70(sp)
sw      a0,0x68(sp)
sw      s5,0x6c(sp)
sw      s6,0x74(sp)
# The later Y conversion uses the next pair.
sw      t4,0x78(sp)
sw      s7,0x7c(sp)
```

-> `code changed` Pass `arg1` and `arg3` directly to the 64-bit
geometry helper in place of the equivalent `x` and `z` local copies.

-> `correct ASM`

```asm
sw      a2,0x78(sp)
sw      a0,0x80(sp)
sw      s5,0x84(sp)
sw      s6,0x7c(sp)
# The later Y conversion uses its target pair.
sw      t4,0x68(sp)
sw      s7,0x6c(sp)
```



`incorrect ASM`

```asm
# func_80126B80_135B30 at 0x136594
mul.s   $f10,$f8,$f0
```

-> `code changed` Put the Y displacement before the square-root result in
the alien projection product. Give the vertical vehicle contact height its
own local immediately before `absZ`, retaining the unsigned halfword cast
on its projected height assignment.

-> `correct ASM`

```asm
mul.s   $f10,$f0,$f8
# The earlier vertical vehicle call retains the two argument spills.
sw      t7,0x94(sp)
sw      t9,0x90(sp)
```


`incorrect ASM`

```asm
lh      ...,4(s0)
sh      ...,4(s4)
sw      zero,0xe4(sp)
```

-> `code changed` Save the selected vehicle's signed Z coordinate in the
existing `hitCoordinate` local. Observe `exactHit` with an empty condition,
then clear it and write the cached Z coordinate.

-> `correct ASM` The memory operations at 0x136264ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“0x13626C are ordered as in
the original. The signed donor load and record store still use a different
temporary register.

```asm
lh      ...,4(s0)
sw      zero,0xe4(sp)
sh      ...,4(s4)
```

`incorrect ASM`

```asm
move    a1,v0
move    a1,v1
# Z absolute value
move    v1,a0
move    v1,v0
slt     at,v1,a1
```

-> `code changed` In vehicle shape zero, assign the negated X delta to an
existing word local before the absolute-value ternary. Use the negation once
more in `absX += negatedX * 0`, and use a separate word local for the absolute
Z value. In the later alien checks, reuse the vehicle's Z result local for the
absolute X values and the signed hit-coordinate local for the lower height
bound. The earlier values are dead at each reuse.

-> `correct ASM`

```asm
move    a2,v0
move    a2,v1
# Z absolute value
move    a1,a0
move    a1,v0
slt     at,a1,a2
```

`incorrect ASM`

```asm
subu    v1,s5,t5
sra     t8,v1,2
# Y delta
subu    v0,s7,t9
sra     t2,v0,2
```

-> `code changed` Use the original X argument in the weak-point X delta as in
`dx = (arg1 - shadowX) >> 2;`. Keep the copied local for the other X
calculations.

-> `correct ASM`

```asm
subu    v0,s5,t5
sra     t8,v0,2
# Y delta
subu    v1,s7,t9
sra     t2,v1,2
```

`incorrect ASM`

```asm
bnez    v0,skip_vehicle_coordinates
lh      t7,0(s0)
sh      t7,0(s4)
lh      t8,2(s0)
sh      t8,2(s4)
```

-> `code changed` Inline the record-kind test and keep the cached Z coordinate as
a signed word. Remove the empty flag condition before the Z store.

-> `correct ASM`

```asm
bnez    t7,skip_vehicle_coordinates
lh      t8,0(s0)
sh      t8,0(s4)
lh      t2,2(s0)
sh      t2,2(s4)
```

`incorrect ASM`

```asm
sw      zero,0xE4(sp)
lh      t3,4(s0)
sh      t3,4(s4)
```

-> `code changed` Read the Z halfword into the signed word `hitCoordinate`,
clear `exactHit`, and store `(u32)hitCoordinate & 0x7FFFFFFFU`. Clearing bit
31 leaves the low halfword intact. IDO and AS1 eliminate the mask from the
instructions while keeping the signed load in the temporary register.

-> `correct ASM`

```asm
lh      t3,4(s0)
sw      zero,0xE4(sp)
sh      t3,4(s4)
```

`incorrect ASM`

```asm
li      t6,0xFE
sw      t6,0x114(sp)
lw      t7,0x118(sp)
```

-> `code changed` Assign `vehicleCount = 0xFE + (x * 0)`, observe
`vehicleCount` with an empty condition, and initialize `entity.alien`
with `&alienInstances[0xFE]` on the same source line.

-> `correct ASM`

```asm
li      v0,0xFE
sw      v0,0x114(sp)
lw      t6,0x118(sp)
```

`incorrect ASM`

```asm
sw      t5,0xE4(sp)
mtc1    t4,f4
sh      v0,2(s4)
```

-> `code changed` Hold the Z halfword in `dx` and observe the old
`exactHit` before the distance conversion. Store Y before assigning
`exactHit = 1 + (dx * 0)`, and store the low halfword of
`(u32)dx & 0x7FFFFFFFU` for Z.

-> `correct ASM` The flag store moves to its target position between the Y
and Z stores. The distance and coordinate load order still differs.

```asm
sh      v0,2(s4)
mtc1    t4,f4
sw      t5,0xE4(sp)
```
