`incorrect ASM`: In `func_800DA510_E94C0`, enclosing the callback work in a positive nonzero-direction guard leaves the effect-ID mask before the pointer spills. The destination-pointer spill occupies the setter's call delay slot:

```asm
lbu     a1,0xf(t0)
andi    a0,t2,0xff
sw      v1,0x2c(sp)
jal     func_800D19DC_E098C
sw      t0,0x28(sp)
```

-> `code changed`: Return immediately when all three direction components are zero, then perform the normalization, allocation, optional flag update, and position copy. Keep the flag cache as `u8`. The trail state stores its flags as a signed halfword at payload offset 6: its initializer passes a signed halfword to `func_800D9A8C_E8A3C` with index 3, which emits `sh` at entry offset `0xE`. Narrowing that field into the byte cache still permits the low-byte load at entry offset `0xF`.

```c
if ((dir.x == 0.0f) && (dir.y == 0.0f) && (dir.z == 0.0f)) {
    return;
}

func_800C1024_CFFD4(&dir, &dir);
/* Allocate the effect using the normalized direction. */
if (effect != 0xFB) {
    u8 flags = dstPos->flags;
    func_800D19DC_E098C(effect, flags);
}
```

-> `correct ASM`: The two pointer spills precede the call, and the argument mask occupies its delay slot. All 120 instruction words match, with the target `0x50` frame. Both complete ROM builds report `OK`: `build/bh.us.z64` and `build.eu/bh.eu.z64`.

```asm
lbu     a1,0xf(t0)
sw      t0,0x28(sp)
sw      v1,0x2c(sp)
jal     func_800D19DC_E098C
andi    a0,t2,0xff
```
