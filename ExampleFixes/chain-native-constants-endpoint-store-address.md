`incorrect ASM` After replacing the two named chain constants in `func_80102FA4_111F54` with `0.9` and `0.1666666667`, IDO makes the endpoint velocity stores absolute. This adds address setup and displaces the late constant pool.

```asm
swc1 f6, D_801593F0 + 0x0c
swc1 f10, D_801593F0 + 0x10
swc1 f10, D_801593F0 + 0x14
```

-> `code changed` Set `cur = (UnkF9230Func80102FA4Point *)(u32)D_801593F0` before the endpoint updates and access the endpoint as `cur[0]`. Regenerate the preceding vehicle and step-count doubles at their C use sites so the five preexisting literals remain in pool order.

-> `correct ASM` The stores use the original base register. The function retains its original size and both ROM checksums pass with the next function also compiled from C.

```asm
swc1 f6, 0x0c(v1)
swc1 f10, 0x10(v1)
swc1 f10, 0x14(v1)
```
