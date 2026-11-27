incorrect ASM:

In `func_800F63D0_105380`, IDO cached middle green directly from its palette byte, omitting the target halfword store and later load. Reading both colors through volatile scalar pointer casts restored the homes but added stack-address calculations:

```asm
addiu t7,sp,0x10c
lh    t2,0(t7)
addiu t9,sp,0x10a
lh    a2,0(t9)
```

-> code changed:

Give green a scalar union containing ordinary and volatile halfword members. Group blue with the adjacent three tip-color halfwords in a second union, keeping the palette assignments ordinary and reading only the first middle vertex through the volatile members:

```c
union { s16 value; volatile s16 ordered; } middleGreen;
union {
    s16 values[4]; /* tip blue, green, red, then middle blue */
    struct { s16 pad[3]; volatile s16 blue; } ordered;
} tailColors;

/* Palette writes use middleGreen.value and tailColors.values. */
D_8005BB34->v.cn[1] = (greenWord = middleGreen.ordered);
D_8005BB34->v.cn[2] = (blueWord = tailColors.ordered.blue);
/* The second vertex uses greenWord and blueWord directly. */
```

Separate scalar unions align independently and leave halfword gaps. The eight-byte tail object places its blue member at offset six while retaining the three ordinary tip-color array elements. The struct member read avoids the shared base pointer introduced by a volatile array view. Reuse expired word scratch locals for the two snapshots.

-> correct ASM:

```asm
sh    t8,0x10c(sp)
sh    t9,0x10a(sp)
sh    t6,0x108(sp)
sh    t7,0x106(sp)
sh    t8,0x104(sp)
/* first middle vertex */
lh    t2,0x10c(sp)
sb    t2,0xd(t7)
lh    a2,0x10a(sp)
sb    a2,0xe(t8)
```

The target halfword homes and one-load-per-color pattern are restored without either address calculation. The frame stays `0x168` and both shared geometry triples retain signed inputs. The complete function remains unmatched; global register allocation and other conversion images still differ.
