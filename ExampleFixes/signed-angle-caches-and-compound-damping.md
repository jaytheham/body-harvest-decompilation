incorrect ASM (`func_802DB8D8_2BDD08`, unsigned angle local):

```asm
jal     coss
 lhu    a0,0x50(sp)
```

-> code changed:

```c
s16 jointAngle8;
jointAngle8 = joint->unk8Unsigned;
cosine = coss(jointAngle8);
```

Keep both cached joint angles signed, while reading the existing unsigned
struct views. The `u16` trig parameter creates a normalized word that IDO
caches across later trig calls. Unsigned locals instead reload their original
halfword homes. Read unsigned angle fields in the joint-update logic too,
retaining explicit `(s16)` comparisons to get the target `lhu; sll; sra`.

-> correct ASM:

```asm
lhu     a0,0x4c(sp)
jal     coss
 sw     a0,0x30(sp)
```

incorrect ASM (separate selected-height local):

```asm
lw      t4,0x6c(sp)
...
addu    t5,t4,v0
slt     at,t3,t5
```

-> code changed:

```c
arg1 += value < D_80222A70 ? D_80222A70 : value;
if (alien->unk10 + alien->unk2 < arg1) {
    alien->unk48 += alienTypes[typeIndex].unk3E;
} else {
    alien->unk48 -= alienTypes[typeIndex].unk3E;
}
```

The mutated word parameter retains V1 for the loaded height and its sum.
Place the two live pointer locals in the otherwise unused word homes before
the projection locals; removing their trailing declarations restores the
0x68 frame without shifting the other source-local offsets.

-> correct ASM:

```asm
lw      v1,0x6c(sp)
...
addu    v1,v1,v0
slt     at,t3,v1
```

incorrect ASM (explicit floating-point multiply and assignment):

```asm
ldc1    f10,0x3048(at)
mtc1    t4,f4
cvt.d.w f6,f4
...
mul.d   f16,f10,f6
```

-> code changed:

```c
alien->unk48 *= D_802E3048_2C5478[0];
```

The compound assignment keeps the original double multiplication and
truncation, while fixing the constant, conversion, and subsequent damping
register cycle. The complete function and full US ROM checksum match.

-> correct ASM:

```asm
ldc1    f6,0x3048(at)
mtc1    t4,f10
cvt.d.w f4,f10
...
mul.d   f16,f4,f6
```
