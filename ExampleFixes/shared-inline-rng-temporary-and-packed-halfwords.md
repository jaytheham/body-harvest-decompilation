incorrect ASM (`func_80088760_97710`, with direct instance accesses and packed locals, but inline RNG call arguments):

```asm
addiu   sp,sp,-0x68
sb      t8,0x67(sp)
...
sh      v0,0x5a(sp)
...
sh      v0,0x5c(sp)
...
sh      v0,0x5e(sp)
```

-> code changed:

```c
u8 typeIndex;
u8 waveIndex;
s32 scratch;
u16 randomSize;
u16 randomZ;
u16 randomX;

/* Also used for the earlier alien-array index comparison. */
scratch = func_800038E0_44E0();
func_80102DDC_111D8C(D_80052B34, scratch, 0x3000, 20.0f);

/* In the separate zombie blood-effect branch: */
randomX = func_800038E0_44E0();
randomZ = func_800038E0_44E0();
randomSize = func_800038E0_44E0();
scratch = func_800038E0_44E0();
/* Pass (scratch % 0x23) + 0x69 in the effect call. */
```

Both raw random arguments must use the existing word scratch. CFE reused one
anonymous word for the two inline calls; hoisting only one left that reservation
in place. The retained compiler input exposed both stores to the same temporary.
Keep the two bytes together before the word scratch and the three halfwords.
The final UOPT local-area size is 24 bytes rather than 32.

-> correct ASM (full US ROM verified `OK`):

```asm
addiu   sp,sp,-0x60
sb      t8,0x5f(sp)
...
sh      v0,0x52(sp)
...
sh      v0,0x54(sp)
...
sh      v0,0x56(sp)
```

incorrect ASM (zombie revival state assignments):

```asm
lw      t6,0x20(s0)
li      t4,0xa
sh      t4,0x1c(s0)
ori     t3,t6,0x4000
jal     func_800038E0_44E0
sw      t3,0x20(s0)
```

-> code changed:

```c
/* Set the flag before restoring hit points in source order. */
alien->unk20 |= ALIEN_FLAG_UNKF;
alien->hitPoints = 0xA;
```

-> correct ASM:

```asm
lw      t4,0x20(s0)
li      t3,0xa
sh      t3,0x1c(s0)
ori     t6,t4,0x4000
jal     func_800038E0_44E0
sw      t6,0x20(s0)
```
