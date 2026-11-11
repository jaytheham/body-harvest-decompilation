# Entity vertical hit X store order

```asm
# 0x135DBC in func_80126B80_135B30
sw      t2,0xe4(sp)
sh      s5,0(s4)
```

-> Move `exactHit = 1;` below `hit.pointer->unk0 = (s16)x;` in the
vertical vehicle hit path.

->

```asm
# The X store now matches at 0x135DBC.
sh      s5,0(s4)
sw      t2,0xe4(sp)
```
