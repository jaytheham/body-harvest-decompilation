# Alien scan Y delta stack offset

```asm
# 0x13652C and 0x136588 in func_80126B80_135B30
sw      v0,0xb4(sp)
lw      v0,0xb4(sp)
```

-> Reuse the scan's `scratch` local for the scaled Y delta once the
preliminary distance test has finished. Use it in both squared-distance
expressions that follow.

->

```asm
# The stack offset now matches. The target uses v1.
sw      v0,0xdc(sp)
lw      v0,0xdc(sp)
```
