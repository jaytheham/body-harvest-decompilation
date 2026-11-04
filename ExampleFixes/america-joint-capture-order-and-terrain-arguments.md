`incorrect ASM`: `func_802DC880_25BFC0` keeps the first traversal pointer in `v0` instead of using it for the final node. The remaining instructions and stack locations match, but the initial traversal has score 90:

```asm
addu    v0,v1,t7
lb      a2,0xc(v0)
lh      a0,0(s0)
lh      a1,4(s0)
sll     t8,a2,4
addu    t9,v1,t8
lb      a3,0xd(t9)
```

-> `code changed`: Index the first link directly. Follow the raw sibling field when creating the final pointer, read its tip, then capture the sibling halfword. Initialize the RGB bytes after these reads. Use the existing four-argument terrain alias with the two captured links; it constrains those live values to `a2` and `a3`. Reverting that call to the two-argument declaration leaves score 70 even with the corrected traversal order. No new declarations, pointer arithmetic, or discarded expressions are needed.

```c
spA6 = D_8014DD50[alienInstances[alienIdx].unkC].unkC;
x = alienInstances[alienIdx].unk0;
z = alienInstances[alienIdx].unk4;
node = &D_8014DD50[D_8014DD50[spA6].unkD];
spA0 = node->unkD;
spA2 = D_8014DD50[spA6].unkD;
sp50[0] = 0xFF;
sp50[1] = 0xFF;
sp50[2] = 0xFF;
sp4C.x = x;
sp4C.z = z;
ratio = (f32)((func_800B84D0_C7480_4Args(x, z, spA6, spA2) >> 8)
    - alienInstances[alienIdx].unk2 + 0x4B0) / 600.0f;
```

-> `correct ASM`: The first two pointers use scratch registers, the final pointer uses `v0`, and the RGB constants occupy the target temporary registers. All 278 instructions match, with the original `0xA8` frame and halfword spill homes. Native full-ROM US and EU checksums both pass:

```asm
addu    t8,v1,t7
lb      a2,0xc(t8)
lh      a0,0(s0)
lh      a1,4(s0)
sll     t9,a2,4
addu    t1,v1,t9
lb      a3,0xd(t1)
li      t4,0xff
li      t5,0xff
sll     t2,a3,4
addu    v0,v1,t2
lb      t3,0xd(v0)
```
