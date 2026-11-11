# Entity trace final Y delta register

```asm
# 0x1369FC and 0x136A40 in func_80126B80_135B30
sw      v0,0xb4(sp)
lw      v0,0xb4(sp)
```

-> Reuse the expired scan local `y` for the Y delta throughout the final
interpolation and distance calculation. The spill and reload then use the
target register `v1`. The stack offset still differs.

->

```asm
sw      v1,0xfc(sp)
lw      v1,0xfc(sp)
```
