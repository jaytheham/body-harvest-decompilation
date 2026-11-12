# Flag guard register in `func_8007DDA0_165E60`

**Incorrect ASM**

```asm
andi    t7,v0,0x4
# At the movement check:
beqz    t7,nextState
```

**Code changed**

Write the movement test as `(u8)flags & 4`. Narrowing the operand preserves the selected bit and changes IDO's register allocation.

**Correct ASM**

```asm
andi    t9,v0,0x4
# At the movement check:
beqz    t9,nextState
```

The first differing ROM word moved from `0x165F40` to `0x166048` in the candidate with the target instruction count. The following `0x40` mask still uses a different register from the target.


## Register allocation after the turn guard

**Incorrect ASM**

```asm
sra     t6,a1,16
move    a1,t6
```

**Code changed**

Write the `0x800` arm of the turn guard as `(u16)flags & 0x800`. Leave the `0x80` arm as a word test.

**Correct ASM**

```asm
sra     t8,a1,16
move    a1,t8
```

The width change preserves the turn guard's meaning and improves the later register assignments. The function still differs from the original.
